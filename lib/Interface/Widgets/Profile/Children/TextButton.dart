import 'package:appwrite/appwrite.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lonefy/Components/Provider/Provider.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/Data/Models/LoggingModel.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenTextButton extends StatelessWidget {
  const ProfileChildrenTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<LoggingModel>("Logged");
    final provider = context.read<ComponentsProvider>();
    final width = MediaQuery.of(context).size.width * 0.9;
    return SizedBox(width: width,
      child: Row(
        mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.06,
              child: TextButton.icon(style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
                onPressed: () {}, icon: Icon(Icons.change_circle_outlined, color: Theme.of(context).textTheme.labelMedium?.color, size: 20,), label: Text(S.of(context).ResetPassword, style: Theme.of(context).textTheme.labelMedium,),),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: SizedBox(height: MediaQuery.of(context).size.height * 0.06,
              child: TextButton.icon(style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).cardColor, shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )),
                onPressed: () async {
                  final account = Account(provider.client);
                  final cubit = context.read<IndexPageCubit>();
                  await box.put("value", LoggingModel(isLogged: false));
                  account.deleteSessions();
                  cubit.changeIndex(0);
                  context.router.navigate(RegisterRoute());
                }, 
              icon: Icon(Icons.logout, color: Theme.of(context).textTheme.labelSmall?.color, size: 20,), label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(S.of(context).Logout, style: Theme.of(context).textTheme.labelSmall,),
              ),),
            ),
          ),
        ],
      ),
    );
  }
}