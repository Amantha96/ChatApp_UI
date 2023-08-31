import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Constants/constants.dart';
import '../Message/Chat_home_page.dart';

class SideMenueBar extends StatelessWidget {
  const SideMenueBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 275,
      backgroundColor: const Color(0xFF17203A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                      InkWell(
                      onTap: () {
                        
                     
                      },
                    child:Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                      ),
                    SizedBox(
                      width: 56,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    UserAvatar(filename: tProfileImage3),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Amantha',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                DrawerItems(
                  title: 'Account',
                  icon: Icons.key,
                ),
                DrawerItems(
                  title: 'Chat',
                  icon: Icons.chat_bubble,
                ),
                DrawerItems(
                  title: 'Notifications',
                  icon: Icons.notifications,
                ),
                DrawerItems(
                  title: 'Data and Stotage',
                  icon: Icons.storage,
                ),
                DrawerItems(
                  title: 'Help',
                  icon: Icons.help,
                ),
                Divider(
                  height: 35,
                  color: Colors.green,
                ),
                DrawerItems(
                    title: 'Invite a friend', icon: Icons.people_outline),
              ],
            ),
            DrawerItems(title: 'Log out', icon: Icons.logout)
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItems({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15,top: 15),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 56,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
