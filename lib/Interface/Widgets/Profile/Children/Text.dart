import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Menus/Text.dart';
import 'package:lonefy/generated/l10n.dart';




class ProfileChildrenText extends StatefulWidget {
  const ProfileChildrenText({super.key});

  @override
  State<ProfileChildrenText> createState() => _ProfileChildrenTextState();
}

class _ProfileChildrenTextState extends State<ProfileChildrenText> {
  final CustomPopupMenuController controller = CustomPopupMenuController();
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(ProfileGet());
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileMetrics>(builder: (context, state) {
      return TextMenu(
      controller: controller,
      child: Builder(
        builder: (context) {
          return Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
              !state.isLoaded! ?
                SpinKitFadingFour(
                  color: Theme.of(context).primaryColor,
                )
              
                : Column(
                  children: [
                    Row(
                      children: [
                        Text(state.nameUser!, style: TextStyle(color: Theme.of(context).textTheme.titleMedium!.color, fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(width: 5,),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Theme.of(context).primaryColor),
                          child: GestureDetector(onTap: () {
                            controller.showMenu();
                          },
                            child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.edit, size: 15, color: Theme.of(context).textTheme.labelMedium?.color,),
                          )
                          ,)),
                      ],
                    ),
                    Text(state.emailUser ?? S.of(context).Error, style: TextStyle(color: Theme.of(context).textTheme.titleMedium!.color, fontSize: 15),),
                
                  ],
                )]);
              }
            
      ));
        }
    );} 
  }