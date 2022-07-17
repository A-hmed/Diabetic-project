import 'package:flutter/material.dart';

import '../../chat_details_screen/chat_details_screen.dart';
import '../../data/user.dart';

class ChatItem extends StatelessWidget {
  MyUser receiver;
  ChatItem(this.receiver);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailsScreen(receiver: receiver);
        }));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 20,
                child:  Icon(Icons.person)),
            const SizedBox(
              width: 12,
            ),
            Text("${receiver.userName}",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
