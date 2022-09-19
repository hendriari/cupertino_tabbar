import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/route_page/calls_page.dart';
import 'package:untitled/presentation/route_page/chats_page.dart';
import 'package:untitled/presentation/route_page/contacts_page.dart';
import 'package:untitled/presentation/route_page/setting_page.dart';


class BottomNavigations extends StatefulWidget {
  const BottomNavigations({Key? key}) : super(key: key);

  @override
  State<BottomNavigations> createState() => _BottomNavigationsState();
}

class _BottomNavigationsState extends State<BottomNavigations> {
  var controller = CupertinoTabController(initialIndex: 0);

  final List<Widget> page = [
    const ContactsPage(),
    const CallsPage(),
    const ChatsPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: controller,
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings_solid),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        controller.index;
        return CupertinoTabView(builder: (context) {
          return page[index];
        });
      },
    );
  }
}
