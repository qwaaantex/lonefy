import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_events.dart';
import 'package:lonefy/Data/BLocs/Profile/profile_state.dart';
import 'package:lonefy/Interface/Widgets/Profile/AppBar.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/BackgroundImage.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Container.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Image.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Links.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/ListTile.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Reputation.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Row.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Select.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/SubTitle.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Text.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/TextButton.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/TextFormField.dart';

class ProfileColumn extends StatefulWidget {
  const ProfileColumn({super.key});

  @override
  State<ProfileColumn> createState() => _ProfileColumnState();
}

class _ProfileColumnState extends State<ProfileColumn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final controllerScroll = ScrollController();
  bool isUnderground = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    controllerScroll.addListener(() {
      if (controllerScroll.offset <= 0.1) {
        setState(() {
          isUnderground = true;
        });
      } else {
        setState(() {
          isUnderground = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          ProfileAppBar(
            isUnderground: isUnderground,),
          SliverFillRemaining(
            child: SafeArea(
            child: RefreshIndicator(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            color: Theme.of(context).primaryColor,
            onRefresh: () async {
              final bloc = context.read<ProfileBloc>();
              bloc.add(ProfileGet());
                      },
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: BlocBuilder<ProfileBloc, ProfileMetrics>(
                  builder: (context, state) {
                    return SingleChildScrollView(
                      controller: controllerScroll,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.isLoaded! && state.isAuth == null ? const SizedBox() : Column(
                            children: [
                              ProfileChildrenContainer(),
                              SizedBox(height: 10,)
                            ],
                          ),
                          ProfileChildrenBackgroundImage(),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProfileChildrenImage(),
                              Center(child: ProfileChildrenText()),
                              ProfileChildrenSelect()
                            ],
                          ),
                          SizedBox(height: 10,),
                          ProfileLinks(),
                          SizedBox(height: 10,),
                          ProfileChildrenReputation(),
                          SizedBox(height: 10),
                          ProfileTextFormField(),
                          SizedBox(height: 10,),
                          ProfileChildrenListTile(),
                          SizedBox(height: 10),
                          ProfileCHildrenRow(),
                          SizedBox(height: 10,),
                          ProfileChildrenTextButton(),
                          SizedBox(height: 20,),
                          ProfileChildrenSubTitle()
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
                      ),
                    ),
          )
        ],
      ),
    );
  }
}
