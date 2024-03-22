import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widget/chatBottom.dart';
import 'package:whatsapp_clone/widget/chatSample.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 25,
              ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: NetworkImage('https://i.pravatar.cc/100?user='),
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Programmer",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Sibuk",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 12, right: 15),
              child: Icon(
                Icons.videocam,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Icon(
                Icons.call,
                size: 26,
              ),
            ),
            PopupMenuButton(
              onSelected: (selected) {},
              padding: EdgeInsets.symmetric(vertical: 20),
              iconSize: 28,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Lihat Kontak",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Media, tautan dan dok",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Cari",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text(
                    "Bisukan notifikasi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text(
                    "Pesan sementara",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10, top: 15, right: 10, bottom: 80),
            child: Column(
              children: [
                Container(
                  width: 270,
                  margin: EdgeInsetsDirectional.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xfffff3c2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Text(
                    "Message and calls are end-to-end encrypted, No one outside of this chat can read listen. Tap to learn more",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: ChatBottom(),
    );
  }
}
