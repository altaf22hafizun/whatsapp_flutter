import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key});

  final List<String> names = [
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
    "Lily",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < names.length; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=$i'),
                  ),
                  title: Text(
                    names[i],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle:
                      Text("Hi, Altaf, pekerjaan mu sangat memuaskan"),
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
