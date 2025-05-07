import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Components/Provider/Provider.dart';
import 'package:lonefy/Data/Adapters/adapters.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_cubit.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';
import 'package:lonefy/Data/BLocs/Login/bloc/bloc/login_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_bloc.dart';
import 'package:lonefy/Data/Models/AuthModel.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';
import 'package:lonefy/Data/Models/Profile/ProfileAboutModel.dart';
import 'package:lonefy/Data/Providers/Login/Provider.dart';
import 'package:lonefy/Data/Providers/Register/Provider.dart';
import 'package:lonefy/Interface/Routes/Router.dart';
import 'package:lonefy/submain.dart';
import 'package:provider/provider.dart';

final _appKey = GlobalKey();
final appRouter = lonefyRouter();


void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    Adapters().registerAdapters();
    final language = Intl.systemLocale.split("_").first;
    final box = await Hive.openBox<LanguageMetrics>("language");
    await Hive.openBox<ProfileAboutModel>("ProfileAboutInfo");
    await Hive.openBox<LoggingModel>("Logged");
    await Hive.openBox<AuthModel>("AuthInfo");
    if (box.get("value") == null) {
      await box.put("value", LanguageMetrics(currentLanguage: language));
    }
    Client client = Client();
    client
    .setEndpoint('https://fra.cloud.appwrite.io/v1')
    .setProject('67fdbc7600141c6c18d9')
    .setSelfSigned(status: true);
    runApp(LonefyMain(language: language, client: client,));
  } catch (e) {
    print(e);
  }
}



class LonefyMain extends StatelessWidget {

  final dynamic language;
  final Client client;
  const LonefyMain({super.key, this.language, required this.client});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegisterProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => ComponentsProvider())
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(providers: [
            BlocProvider(create: (context) => LanguageCubit(language)),
            BlocProvider(create: (context) => RegisterBloc(client, context)),
            BlocProvider(create: (context) => LoginBloc(client)),
            BlocProvider(create: (context) => IndexPageCubit()),
            BlocProvider(create: (context) => ProfileBloc(client)),
          ], child:
          BlocBuilder<LanguageCubit, LanguageMetrics>(
            builder: (context, state) {
              return LonefySubMain(appKey: _appKey);
            },
          ));
        }
      ),
    );
  }
}
