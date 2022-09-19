import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/data/chatting_data.dart';

class UnreadChats extends StatelessWidget {
  const UnreadChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: chattings.length,
        itemBuilder: (context, index) {
          final Chatting chats = chattings[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(chats.image),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chats.nama,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            chats.lastChat,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                color: CupertinoColors.systemGrey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chats.jam,
                          style: const TextStyle(fontSize: 13),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.systemBlue),
                          child: Center(
                            child: Text(
                              '${chats.jumlahChat}',
                              style: const TextStyle(
                                  fontSize: 12, color: CupertinoColors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
