import 'package:flutter/material.dart';
import 'package:lonefy/generated/l10n.dart';

class SettingsChildrenSwitch extends StatefulWidget {
  const SettingsChildrenSwitch({super.key});

  @override
  State<SettingsChildrenSwitch> createState() => _SettingsChildrenSwitchState();
}

class _SettingsChildrenSwitchState extends State<SettingsChildrenSwitch> {
  bool isNotificated = false;
  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(S.of(context).ReceiveNotifications, style: Theme.of(context).textTheme.labelSmall,),
            ),
            Switch(
              activeColor: Theme.of(context).primaryColor.withOpacity(0.4),
              inactiveTrackColor: Colors.grey.shade400,
              trackOutlineColor: WidgetStatePropertyAll(Colors.transparent),
              activeTrackColor: Theme.of(context).primaryColor.withOpacity(0.4),
              activeThumbColor: Theme.of(context).primaryColor,
              inactiveThumbColor: Colors.grey,
              value: isNotificated, onChanged: (value) {
              setState(() {
                isNotificated = !isNotificated;
              });
            }),
          ],
        ),
      ),
    );
  }
}