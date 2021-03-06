import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/app/chat/chat_screen.dart';
import 'package:startapp/app/settings_page.dart';
import 'package:startapp/app/swipe_screen.dart';
import 'package:startapp/constants/constatnts.dart';
import 'package:startapp/provider/bottom_nav_provider.dart';
import 'package:flutter/material.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigation = ref.watch(bottomNavProvider);

    return Scaffold(
      body: currentScreen(navigation.index),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Constants.primary_lightblue,
        selectedItemColor: Constants.primary_cyan,
        currentIndex: navigation.index,
        onTap: (index) {
          ref.read(bottomNavProvider.notifier).selectPage(index);
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Constants.primary_cyan,
            label: "Cunt",
            icon: Icon(
              Icons.home,
              color: Constants.primary_cyan,
            ),
          ),
          BottomNavigationBarItem(
            label: "Funk",
            icon: Icon(
              Icons.ac_unit,
              color: Constants.primary_cyan,
            ),
          ),
          BottomNavigationBarItem(
            label: "Pubk",
            icon: Icon(
              Icons.cabin,
              color: Constants.primary_cyan,
            ),
          ),
        ],
      ),
    );
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return const SwipeScreen(title: "FIND YOUR PERFECT TEAM");
      case 1:
        return Container(
          color: Colors.amber,
          child: ChatScreen(),
        );
      case 2:
        return Container(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: SettingScreen(),
          ),
        );
      default:
        return const SwipeScreen(title: "cunt");
    }
  }
}
