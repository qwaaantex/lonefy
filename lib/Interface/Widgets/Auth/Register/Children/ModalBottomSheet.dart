import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_cubit.dart';
import 'package:lonefy/Data/BLocs/Language/cubit_state.dart';

class RegisterChildrenModalBottomSheet extends StatefulWidget {
  const RegisterChildrenModalBottomSheet({super.key});

  @override
  State<RegisterChildrenModalBottomSheet> createState() => _RegisterChildrenModalBottomSheetState();
}

class _RegisterChildrenModalBottomSheetState extends State<RegisterChildrenModalBottomSheet>
    with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    final languagesCode = [
      'en',
      'ru',
      'fr',
    ];
    final languages = [
      "English",
      "Русский",
      "Français",
    ];
    final languagesLogo = [
      "lib/Interface/Assets/Images/English.png",
      "lib/Interface/Assets/Images/Russia.png",
      "lib/Interface/Assets/Images/France.png",
    ];
    return Padding(padding: EdgeInsets.all(4),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
          SizedBox(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(itemCount: languages.length,
              itemBuilder: (context, index) {
              return ListTile(trailing: Container(width: MediaQuery.of(context).size.width * 0.1, height: MediaQuery.of(context).size.height * 0.02,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.transparent.withOpacity(0.2)), child: Center(child: Container(width: MediaQuery.of(context).size.width * 0.08, height: MediaQuery.of(context).size.height * 0.013,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Hive.box<LanguageMetrics>("language").get("value")?.currentLanguage == languagesCode[index] ? Colors.green :
                  Colors.teal),)),),
                onTap: () {
                context.read<LanguageCubit>().changeLanguage(languagesCode[index]);
              },
                title: Text(languages[index], style: TextStyle(color: Colors.black, fontSize: 16),), leading: Image.asset(languagesLogo[index], scale: 20,),);
            }),
          )
        ],
      ),
    );
  }
}