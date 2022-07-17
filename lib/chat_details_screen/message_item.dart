import 'package:flutter/material.dart';

import '../data/Message.dart';

class MessageItem extends StatelessWidget {
  MessageItem({required this.message, required this.rightSided});
  bool rightSided;
  Message message;

  @override
  Widget build(BuildContext context) {
    double sideMargin = 0.2 * MediaQuery.of(context).size.width;
    double leftMargin = rightSided ? sideMargin : 0;
    double rightMargin = rightSided ? 0 : sideMargin;

    return Container(
      margin: EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            rightSided ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: IntrinsicWidth(
              child: Container(
                margin: EdgeInsets.only(
                    bottom: 16, left: leftMargin, right: rightMargin),
                padding: EdgeInsets.fromLTRB(
                    rightSided ? 16 : 10, 16, rightSided ? 10 : 16, 16),
                decoration: BoxDecoration(
                    color: rightSided ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(rightSided ? 0 : 16),
                      left: Radius.circular(rightSided ? 16 : 0),
                    ),
                    border: Border.all(color: Colors.white)),
                alignment:
                    rightSided ? Alignment.centerRight : Alignment.centerLeft,
                child: Text(
                  message.content,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
