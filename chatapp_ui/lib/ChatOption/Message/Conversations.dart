import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Constants/constants.dart';
import 'Chat_home_page.dart';

class Conversations extends StatelessWidget {
  const Conversations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 320,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 25),
          children: [
            buildConversationRow(
                'Rana', 'Hello ,how are you', tProfileImage, 7),
            buildConversationRow(
                'Senura', 'Hello ,how are you', tProfileImage2, 0),
            buildConversationRow(
                'Uvidu', 'Hello ,how are you', tProfileImage4, 7),
            buildConversationRow(
                'Amantha', 'Hello ,how are you', tProfileImage3, 0),
            buildConversationRow(
                'Maleesha', 'Hello ,how are you', tProfileImage2, 0),
            buildConversationRow(
                'Nuwandi', 'Hello ,how are you', tProfileImage5, 0),
            buildConversationRow(
                'Amantha', 'Hello ,how are you', tProfileImage6, 0),
            buildConversationRow(
                'Senura', 'Hello ,how are you', tProfileImage2, 0),
            buildConversationRow(
                'Gura', 'Hello ,how are you', tProfileImage, 0),
          ],
        ),
      ),
    );
  }
}

Column buildConversationRow(
    String name, String message, String filename, int msgCount) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserAvatar(filename: filename),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Robot-medium',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Robot-medium',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 5),
            child: Column(
              children: [
                Text(
                  '16.35',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 15,
                ),
                if (msgCount > 0)
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFF27c1a9),
                    child: Text(
                      msgCount.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
      Divider(
        indent: 70,
      ),
    ],
  );
}
