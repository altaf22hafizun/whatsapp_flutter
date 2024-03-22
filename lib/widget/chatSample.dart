import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:
                  EdgeInsets.only(left: 25, right: 10, bottom: 10, top: 10),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Hi, Altaf, pekerjaan mu sangat memuaskan.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
            top: 20,
            left: 80,
            bottom: 15,
          ),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Hi, Terima kasih atas ucapannya.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
