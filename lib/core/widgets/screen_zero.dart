import 'package:flutter/material.dart';
import 'package:space_app/core/models/app_colors.dart';

import 'buttons.dart';


class ScreenZero extends StatelessWidget {
  const ScreenZero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("lib/core/Assets/images/screen_zero_background.png")),
            ),
            child: Container(
              alignment:Alignment.centerLeft,
              child: Text("Explore\nThe\nUniverse", style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w800,
              color: AppColors.white,
            ),),
            ),
          ),
          Align(
            alignment:Alignment.bottomCenter,
            child: BottomElevatedButton(screenNumber: 0,),
          )

        ],
      ),
    );
  }
}
