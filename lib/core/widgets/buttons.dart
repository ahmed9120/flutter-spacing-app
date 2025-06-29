import 'package:flutter/material.dart';
import 'package:space_app/core/models/planets.dart';
import 'package:space_app/core/widgets/screen_one.dart';
import 'package:space_app/core/widgets/screen_two.dart';

import '../models/app_colors.dart';

class CircularArrowButton extends StatelessWidget {
  CircularArrowButton({super.key, required this.isForwardArrow, this.pageController, this.screenNumber=1,});
  bool isForwardArrow=false;
  int screenNumber;
  PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: (){
        if(screenNumber==1){
          if(isForwardArrow){
            pageController!.nextPage(duration: Duration(microseconds: 500), curve: Curves.bounceInOut);
          }else{
            pageController!.previousPage(duration: Duration(microseconds: 1000), curve: Curves.bounceInOut);
          }
        }else if(screenNumber==2){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenOne()));
        }

      },
      label: Icon((isForwardArrow)?Icons.arrow_forward:Icons.arrow_back, size: 25,color: AppColors.white,),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(10),
          backgroundColor: AppColors.red,
          shape: CircleBorder()
      ),
    );
  }
}


class BottomElevatedButton extends StatelessWidget {
  BottomElevatedButton({super.key, required this.screenNumber,this.planetIndex=0});
  int planetIndex;
  int screenNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * (60 / 812),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red
          ),
          onPressed: (){
            if(screenNumber==0){

              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenOne()));
            }else if(screenNumber==1){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTwo(planetIndex: planetIndex)));
            }
          },
          child: Row(
            children: [
              Expanded(child: Text("Explore ${planets[planetIndex].name}", style: TextStyle(color: AppColors.white, fontSize: 20, fontWeight: FontWeight.bold,)),),
              Icon(Icons.arrow_forward, color: AppColors.white,size: 30,),
            ],
          )
      ),
    );
  }
}
