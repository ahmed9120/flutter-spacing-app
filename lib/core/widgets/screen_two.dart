import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:space_app/core/models/planets.dart';
import 'package:space_app/core/widgets/upper_bar.dart';

import '../models/app_colors.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key, required this.planetIndex});
  int planetIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UpperBar(screenNumber: 2,planetIndex: planetIndex,)),
          SliverToBoxAdapter(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * (343 / 812),
                child: ModelViewer(
                  key: ValueKey(planets[planetIndex].modelPath),
                  src: planets[planetIndex].modelPath,


                )
            ),
          ),
          SliverToBoxAdapter(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                Text("About", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text(planets[planetIndex].about, style: TextStyle(color: AppColors.white,fontSize: 16, fontWeight: FontWeight.w300,),),
                Text("Distance from Sun (km) : ${planets[planetIndex].distanceFromSun}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Length of Day (hours) : ${planets[planetIndex].dayLength}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Orbital Period (Earth years) : ${planets[planetIndex].orbitalPeriod}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Radius (km) : ${planets[planetIndex].radius}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Mass (kg) : ${planets[planetIndex].mass}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Gravity (m/s²) : ${planets[planetIndex].gravity}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
                Text("Surface Area (km²) : ${planets[planetIndex].surfaceArea}", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w700),),
              ],
            ),
          ),)

        ],
      ),
    );
  }
}
