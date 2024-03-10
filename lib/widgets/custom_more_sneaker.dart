import 'package:flutter/material.dart';
import 'package:sneakershop/theme/app_colors.dart';

class CustomMoreSneker extends StatelessWidget {
  const CustomMoreSneker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 165,
     child:  Padding(
       padding: const EdgeInsets.all(20.0),
       child: Container(
      width: 182,
      height: 202,
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
     'assets/pngs/airmax.png',
     fit: BoxFit.cover,
     width: 122, 
     height: 162,
            ),
          ),
          
         Positioned(
          bottom: 0, 
          left: 0, 
          right: 0, 
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
     children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50),
         child: Text('NIKE AIR - MAX',
         style: TextStyle(
           fontWeight: FontWeight.w700,
           fontSize: 9,
         ),
         ),
       ),
                 Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50),
         child: Text('S 170.00',
         style: TextStyle(
           fontWeight: FontWeight.w700,
           fontSize: 9,
         ),
         ),
       ),
     ],
            ),
           ),
         ),
          Align(
            alignment: Alignment.topLeft,
            child:  Container(
     width: 17,
     height: 60,
     decoration: BoxDecoration(
       color: Colors.pink,
     ),
     child: RotatedBox(
        quarterTurns: 3,
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 5),
         child: Text(
           'NEW',
           style: TextStyle(
             fontWeight: FontWeight.w700,
             color: AppColors.white
           ),),
       ),
     ),
            )
          ),
          Align(
     alignment: Alignment.topRight,
     child: IconButton(
       onPressed: () {
        
       },
       icon: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Icon(
           Icons.favorite_border,
           color: Colors.black,
       
           
         ),
       ),
     ),
            ),
        ],
      ), 
      ),
     ),
    );
  }
}
