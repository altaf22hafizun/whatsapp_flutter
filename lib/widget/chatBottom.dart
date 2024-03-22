import 'package:flutter/material.dart';

class ChatBottom extends StatelessWidget {
  const ChatBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
           
                Container(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.attachment_outlined, color: Colors.black38),
                SizedBox(width: 15,),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black38,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff00887a),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.mic,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
