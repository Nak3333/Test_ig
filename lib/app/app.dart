
import 'package:flutter/material.dart';

import 'ProfileMe.dart';
import 'ProfileScreen_2.dart';
import 'ProfileScreen_3.dart';
import 'Search.dart';
import 'Video_Screen.dart';
import 'instagram.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Uncomment the desired screen to use it as the home screen:

      // home: LearningFlutter(), // Replace 'LearningFlutter' with the correct class name.
      // home: LayoutScreen(),
      // home: HomeWork(),
      // home: listView(), // Ensure the ListView widget is implemented and named correctly.
      //home: Fb(), // The current active screen.
      // home: FbScreen_New(),
      //home: Food_Khmer(),
      //home: Instagram(),
     //home: VideoScreen(),
      home: ProfileMe(),
      //home: Profilescreen_2(),
      //home: Profilescreen_3(),
      //home: FbScreen(),
      //home: Search(),

    );
  }
}