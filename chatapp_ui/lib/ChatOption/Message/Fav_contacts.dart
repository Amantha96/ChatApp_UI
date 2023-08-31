import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Constants/constants.dart';
import 'Chat_home_page.dart';

class Favoritecontacts extends StatelessWidget {
  const Favoritecontacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 140,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          color: Color(0xFF27c1a9),
     
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 25, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favorite contacts",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto-Bold',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                    //  style: TextStyle(
                    // fontFamily: 'Roboto',
                    // fontSize: 25,
                    // fontWeight: FontWeight.w400,
                    // color: Colors.white,
                    // overflow: TextOverflow.ellipsis),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 90 ,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BuildContactAvatar('Amantha', tProfileImage2),
                    BuildContactAvatar('Senura', tProfileImage2),
                    BuildContactAvatar('Mandhara', tProfileImage3),
                    BuildContactAvatar('Vihaga', tProfileImage4),
                    BuildContactAvatar('Rowan', tProfileImage5),
                    BuildContactAvatar('Chathura', tProfileImage6),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
