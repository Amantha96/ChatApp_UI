import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ChatOption/Message/Chat_home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:  Color(0xFF17203A),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App UI Design',
      home: ChatHome(),
    );
  }
}

