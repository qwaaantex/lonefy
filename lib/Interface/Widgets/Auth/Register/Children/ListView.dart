import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Register/Children/ModalBottomSheet.dart';
import 'package:lonefy/generated/l10n.dart';

class RegisterChildrenListView1 extends StatelessWidget {
  const RegisterChildrenListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              showModalBottomSheet(backgroundColor: Colors.teal, barrierColor: Colors.black.withOpacity(0.3),
                context: context, builder: (context) {
                return Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 6,),
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(45), color: Colors.transparent.withOpacity(0.2)),
                      width: MediaQuery.of(context).size.width * 0.1, height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    RegisterChildrenModalBottomSheet()
                  ],
                );
              });
            },
            icon: Icon(CupertinoIcons.globe, color: Colors.white,),
            label: Text(S.current.ChooseLanguage, style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'lonefyBold'),));
      }
    );
  }
}