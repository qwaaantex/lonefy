import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';

class ProfileChildrenText extends StatefulWidget {
  const ProfileChildrenText({super.key});

  @override
  State<ProfileChildrenText> createState() => _ProfileChildrenTextState();
}

class _ProfileChildrenTextState extends State<ProfileChildrenText> {

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(ProfileGet());
  }


  @override
  Widget build(BuildContext context) {
    
    return Builder(
      builder: (context) {
        return Column(mainAxisAlignment: MainAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
          BlocBuilder<ProfileBloc, ProfileMetrics>(builder: (context, state) {
            if (!state.isLoaded) {
              return SpinKitFadingFour(
                color: Theme.of(context).primaryColor,
              );
            } else {
              return Column(
                children: [
                  Row(
                    children: [
                      Text(state.nameUser!),
                      SizedBox(width: 5,),
                      Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Theme.of(context).primaryColor),
                        child: GestureDetector(child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.edit, size: 15, color: Theme.of(context).textTheme.labelMedium?.color,),
                        )
                        ,))
                    ],
                  ),
                  Text(state.emailUser!),
                ],
              );
            }
          })
        ],);
      }
    );
  }
}