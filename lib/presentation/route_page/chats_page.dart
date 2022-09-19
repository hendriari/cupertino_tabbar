import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/chats/alll_chat.dart';
import 'package:untitled/presentation/chats/personal.dart';
import 'package:untitled/presentation/chats/unread.dart';
import 'package:untitled/presentation/chats/work.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double addPaddingTop = MediaQuery.of(context).padding.top;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Container(
                height: addPaddingTop,
                color: CupertinoColors.systemGroupedBackground),
            Container(
              height: 128,
              width: double.infinity,
              color: CupertinoColors.systemGroupedBackground,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 16, color: CupertinoColors.systemBlue),
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                              fontSize: 16,
                              color: CupertinoColors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          CupertinoIcons.app_badge,
                          color: CupertinoColors.systemBlue,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CupertinoSearchTextField(),
                    const SizedBox(
                      height: 10,
                    ),
                    const TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: CupertinoColors.activeBlue,
                        labelColor: CupertinoColors.activeBlue,
                        unselectedLabelColor: CupertinoColors.systemGrey,
                        tabs: [
                          Tab(text: 'All Chat'),
                          Tab(text: 'Work'),
                          Tab(text: 'Unread'),
                          Tab(text: 'Personal'),
                        ]),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  AllChats(),
                  WorkChats(),
                  UnreadChats(),
                  PersonalChats(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
