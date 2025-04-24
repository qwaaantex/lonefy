import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lonefy/Interface/Widgets/Auth/Components/ModalBottomSheet.dart';
import 'package:lonefy/generated/l10n.dart';

class LoginChildrenListView1 extends StatelessWidget {
  const LoginChildrenListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              showModalBottomSheet(backgroundColor: Colors.teal,
                context: context, builder: (context) {
                return SizedBox(child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 6,),
                    Container(width: MediaQuery.of(context).size.width * 0.1, height: MediaQuery.of(context).size.height * 0.008,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Colors.transparent.withOpacity(0.2)),),
                    AuthComponentsModalBottomSheet(),
                  ],
                ));
              });
            },
            icon: Icon(CupertinoIcons.globe, color: Colors.white,),
            label: Text(S.current.ChooseLanguage, style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: 'lonefyBold'),));
      }
    );
  }
}