import 'package:flutter/material.dart';
import 'package:space_app/core/models/app_colors.dart';
import 'package:space_app/core/models/planets.dart';
import 'package:space_app/core/widgets/planets_scroll.dart';
import 'package:space_app/core/widgets/upper_bar.dart';

import 'buttons.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});
  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  PageController pageViewController= PageController(initialPage: 0);
  int currentPlanetIndex=0;
  void updatePlanetIndex(int newIndex){
    setState(() {
      currentPlanetIndex=newIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UpperBar(screenNumber: 1)),
          SliverToBoxAdapter(
            child: PlanetsScroll(onPageChange: updatePlanetIndex,pageController:pageViewController,),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Row(
                children: [
                  CircularArrowButton(isForwardArrow: false,pageController:pageViewController,screenNumber: 1,),
                  Expanded(child: Text(
                    planets[currentPlanetIndex].name,
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24
                    ),
                    textAlign: TextAlign.center,
                  )),
                  CircularArrowButton(isForwardArrow: true,pageController:pageViewController,screenNumber: 1,),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: BottomElevatedButton(screenNumber: 1,planetIndex: currentPlanetIndex,),)

        ],
      ),
    );
  }
}
