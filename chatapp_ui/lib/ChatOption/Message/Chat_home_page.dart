import 'package:flutter/material.dart';
import '../../Constants/constants.dart';
import '../Sidemenu/sideMenuBar.dart';
import 'Conversations.dart';
import 'Fav_contacts.dart';
import 'category.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: const Color(0xFF17203A),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Categorylist(),
              ],
            ),
            Favoritecontacts(),
            Conversations(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            backgroundColor: Color(0xFF27c1a9),
            child: Icon(
              Icons.edit_outlined,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
        drawer: SideMenueBar());
  }
}

Padding BuildContactAvatar(String name, String filename) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, left: 20),
    child: Column(
      children: [
        UserAvatar(filename: tProfileImage),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto-SemiBold',
              fontWeight: FontWeight.w500,
              fontSize: 15),

          //  style: TextStyle(
          //           color: Colors.white,
          //           fontFamily: 'Roboto-Bold',
          //           fontSize: 20,
          //           fontWeight: FontWeight.w700,
        )
      ],
    ),
  );
}

class UserAvatar extends StatelessWidget {
  final String filename;

  const UserAvatar({
    Key? key,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(filename),
      ),
    );
  }
}
