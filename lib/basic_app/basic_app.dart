import 'package:flutter/material.dart';

import 'Search.dart';
import 'instagram.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Instagram(), //
      //home: ChatScreen(),
      //home: NotificationsScreen(),
      // home: VideoScreen(),
      //home: ProfileMe(),
      //home: Profilescreen_2(),
      //home: Profilescreen_3(),
      //home: Profilescreen_4(),
      //home: Profilescreen_5(),
      //home: Search(),
      //home: reel(),
      //home: NewPostScreen(),
    );
  }
}
