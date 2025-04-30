import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Container.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Image.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Text.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/TextButton.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/TextFormField.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Title.dart';

class ProfileColumn extends StatefulWidget {
  const ProfileColumn({super.key});

  @override
  State<ProfileColumn> createState() => _ProfileColumnState();
}

class _ProfileColumnState extends State<ProfileColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: BlocBuilder<ProfileBloc, ProfileMetrics>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileChildrenTitle(),
                state.isLoaded && state.isAuth == null ? SizedBox.shrink() : Column(
                  children: [
                    ProfileChildrenContainer(),
                    SizedBox(height: 10,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProfileChildrenImage(),
                    SizedBox(width: 10),
                    ProfileChildrenText(),
                  ],
                ),
                SizedBox(height: 10),
                ProfileTextFormField(),
                SizedBox(height: 10),
                ProfileChildrenTextButton(),
              ],
            );
          },
        ),
      ),
    );
  }
}
