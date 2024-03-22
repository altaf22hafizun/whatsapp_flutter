import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Text(
                  "Status",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PopupMenuButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("Privasi Status"),
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user='),
                  ),
                ),
                title: Text(
                  "Status Saya",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text("04.20"),
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  "Pembaruan terkini",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFF075E55), width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=1'),
                  ),
                ),
                title: Text(
                  "Charlie",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text("04.20"),
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFF075E55), width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=2'),
                  ),
                ),
                title: Text(
                  "David",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text("04.20"),
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                  "Pembaruan yang dilihat",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=3'),
                  ),
                ),
                title: Text(
                  "Eva",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text("04.20"),
              ),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey, width: 3),
                  ),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/100?user=4'),
                  ),
                ),
                title: Text(
                  "Bob",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text("04.20"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
