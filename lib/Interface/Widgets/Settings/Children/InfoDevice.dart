import 'package:device_information/device_information.dart';
import 'package:flutter/material.dart';

class SettingsChildrenInfoDevice extends StatefulWidget {
  const SettingsChildrenInfoDevice({super.key});

  @override
  State<SettingsChildrenInfoDevice> createState() => _SettingsChildrenInfoDeviceState();
}

class _SettingsChildrenInfoDeviceState extends State<SettingsChildrenInfoDevice> {
  late String? deviceModel;
  late String? deviceName;
  late String? deviceManufacturer;
  late String? deviceCpu;
  late String? deviceHardware;
  late String? deviceVersion;
  bool isLoaded = false;
  Future<void> getInformation() async {
    deviceName = await DeviceInformation.deviceName;
    deviceModel = await DeviceInformation.deviceModel;
    deviceManufacturer = await DeviceInformation.deviceManufacturer;
    deviceCpu = await DeviceInformation.cpuName;
    deviceHardware = await DeviceInformation.hardware;
    deviceVersion = await DeviceInformation.platformVersion;
    setState(() {
      isLoaded = true;
    });
  }
  @override
  void initState() {
    super.initState();
    getInformation();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.9,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).cardColor
            ),
            child: isLoaded != false ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                Text(deviceManufacturer!, style: Theme.of(context).textTheme.labelSmall,),
                Text(deviceModel!, style: Theme.of(context).textTheme.labelSmall,),
                Text(deviceName!, style: Theme.of(context).textTheme.labelSmall,),
              ],),
            )  : CircularProgressIndicator()
            ),
            Container(width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).cardColor
            ),
            child: isLoaded != false ? Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                Text(deviceVersion!, style: Theme.of(context).textTheme.labelSmall,),
                Text(deviceCpu!, style: Theme.of(context).textTheme.labelSmall,),
                Text(deviceHardware!, style: Theme.of(context).textTheme.labelSmall,),
              ],),
            )  : CircularProgressIndicator()
            ),
        ],
      ),
    );
  }
}