import 'package:flutter/material.dart';
import 'package:whatsapp_clone/page/chat.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  final List<String> users = [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Eve",
    "Frank",
    "Grace",
    "Hannah",
    "Isaac",
    "Julia",
    "Kevin",
    "Lily"
  ];

  final List<String> avatar = [
    'https://i.pravatar.cc/100?user=0',
    'https://i.pravatar.cc/100?user=1',
    'https://i.pravatar.cc/100?user=2',
    'https://i.pravatar.cc/100?user=3',
    'https://i.pravatar.cc/100?user=4',
    'https://i.pravatar.cc/100?user=5',
    'https://i.pravatar.cc/100?user=6',
    'https://i.pravatar.cc/100?user=7',
    'https://i.pravatar.cc/100?user=8',
    'https://i.pravatar.cc/100?user=9',
    'https://i.pravatar.cc/100?user=10',
    'https://i.pravatar.cc/100?user=11'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < users.length; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage",
                    arguments: {"selectedUser": users[i], "avatar": avatar[i]});
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(avatar[i]),
                  ),
                  title: Text(
                    users[i],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Hi, Altaf, pekerjaan mu sangat memuaskan"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("09.10"),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xFF075E55),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
