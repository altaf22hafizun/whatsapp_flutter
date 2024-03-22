import 'package:flutter/material.dart';

class CallWidget extends StatelessWidget {
  CallWidget({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Terbaru",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          for (int i = 1; i < names.length; i++)
            InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=$i'),
                  ),
                  title: Text(
                    names[i],
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_made,
                        size: 16,
                        color: Colors.green,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Hari ini 05.30",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    size: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
