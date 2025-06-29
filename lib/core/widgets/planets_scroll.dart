import 'package:flutter/material.dart';
import 'package:space_app/core/models/planets.dart';

class PlanetsScroll extends StatelessWidget {
  PlanetsScroll({super.key, required this.onPageChange, required this.pageController});
  void Function(int) onPageChange;
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height * (400 / 812),
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChange,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Image.asset(
            planets[index].imagePath,
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height * (339 / 812),
            fit: BoxFit.contain,);
        },
        itemCount: planets.length,
      ),
    );
  }
}
