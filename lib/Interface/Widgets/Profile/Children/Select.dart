import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Data/BLocs/Profile/cubit/status_cubit.dart';
import 'package:lonefy/Interface/Widgets/Profile/Children/Menus/Status.dart';
import 'package:lonefy/generated/l10n.dart';

class ProfileChildrenSelect extends StatefulWidget {
  const ProfileChildrenSelect({super.key});

  @override
  State<ProfileChildrenSelect> createState() => _ProfileChildrenSelectState();
}

class _ProfileChildrenSelectState extends State<ProfileChildrenSelect> {
  final CustomPopupMenuController controller = CustomPopupMenuController();
  @override
  Widget build(BuildContext context) {
    return StatusMenu(
      controller: controller,
      child: SizedBox(
        child: TextButton.icon(
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            StatusMenu(controller: controller).changeState(true);
          },
          icon: Icon(
            CupertinoIcons.selection_pin_in_out,
            color: Theme.of(context).textTheme.labelSmall!.color,
            size: 20,
          ),
          label: Padding(
            padding: const EdgeInsets.all(4.0),
            child: BlocBuilder<StatusCubit, StatusInitial>(
              builder: (context, state) {
                return state.StatusState != null ? Text(state.StatusState!, style: Theme.of(context).textTheme.labelSmall,) :
                Text(
                  S.of(context).SelectStatus,
                  style: Theme.of(context).textTheme.labelSmall,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
