import 'package:flutter/material.dart';
import 'package:space_app/core/models/planets.dart';

import '../models/app_colors.dart';
import 'buttons.dart';

class UpperBar extends StatelessWidget {
  UpperBar({super.key, required this.screenNumber, this.planetIndex=0});
  int screenNumber;
  int planetIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("lib/core/Assets/images/upper_screen_earth.png", width: double.infinity,height:MediaQuery.of(context).size.height * ((screenNumber == 1 ? 190 : 140) / 812), fit: BoxFit.fill,),
        Container(
          color: Colors.transparent,
          height:MediaQuery.of(context).size.height * ((screenNumber == 1 ? 240 : 140) / 812),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      (screenNumber == 1) ? "Explore" : planets[planetIndex].name,
                      style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  (screenNumber==2)?Row(
                    children: [
                      CircularArrowButton(isForwardArrow: false, screenNumber: 2,),
                    ],
                  ):Text(""),
                ],
              ),

              Text((screenNumber==1)?"Which planet\nwould you like to explore?":planets[planetIndex].title,style:TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
            ],
          ),
        ),
      ],
    );
  }
}
