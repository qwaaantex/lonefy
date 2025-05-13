import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lonefy/Components/BottomNavBar/BottomNavigationBar.dart';
import 'package:lonefy/Data/BLocs/IndexedStack/cubit/index_page_cubit.dart';
import 'package:lonefy/Interface/Screens/Profile.dart';
import 'package:lonefy/Interface/Screens/Settings.dart';
import 'package:lonefy/Interface/Screens/Songs.dart';
import 'package:lonefy/Interface/Widgets/Home/Column.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeColumn(),
      SongsScreen(),
      ProfileScreen(),
      SettingsScreen(),
    ];
    return BlocBuilder<IndexPageCubit, IndexPageInitial>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavBar(pages: pages),
          body: IndexedStack(
            index: state.currentIndex,
            children: pages,
          ),
        );
      },
    );
  }
}
