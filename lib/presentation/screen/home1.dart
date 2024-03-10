import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakershop/presentation/consts/app_const.dart';
import 'package:sneakershop/presentation/models/email_model.dart';
import 'package:sneakershop/theme/app_colors.dart';
import 'package:sneakershop/theme/app_fonts.dart';
import 'package:sneakershop/widgets/custom_more_sneaker.dart';
import 'package:sneakershop/widgets/custom_sneaker.dart';
import 'package:sneakershop/widgets/dio_settings.dart';

class Home1Screen extends StatelessWidget {
  const Home1Screen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
      title: Text('Discover',
      style: AppFonts.w200s50,
      
      ),
      actions: [
        IconButton(onPressed: (){}, 
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        ),
        IconButton(onPressed: (){}, 
        icon: Icon(
          Icons.notifications,
          color:  Colors.black,
        ),
        ),
      ],
      backgroundColor: Colors.white54,
      
     ),
     
      body: DefaultTabController(length: 5, child:
       Column(
        children: [
          TabBar(
            isScrollable: true,
            tabs: [
                Tab(
                text: 'Nike', 
              ),
              Tab(
                text: 'Adidas', 
              ),
              Tab(
                text: 'Jordan', 
              ),
              Tab(
                text: 'Puma', 
              ),
              Tab(
                text: 'Reebok', 
              ),
               
           ],
           labelColor: Colors.black,
          ),
          Expanded(
            child: TabBarView(
              children: [
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Center(
                   
                     child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: customsneaker(
                          containerColor: AppColors.buttoncolor,
                          title: 'EPIC-REACT',
                          price: 'S130.00',
                          imageAsset: 'assets/pngs/sneak1.png',),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right: 50),
                         child: customsneaker(
                          title: 'Air Max',
                          containerColor: Color(0xff537DD7),
                          price: 'S170.00',
                          imageAsset: 'assets/pngs/sneak2.png',),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(right: 50),
                         child: customsneaker(
                          containerColor: Color(0xff00ACB9),
                          title: 'Air Max',
                          price: 'S250.00',
                          imageAsset: 'assets/pngs/sneak3.png',),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 50),
                         child: customsneaker(
                          containerColor: Color(0xffEAA08F),
                          price: 'S220.00',
                          title: 'EPIC-REACT',
                          imageAsset: 'assets/pngs/sneak4.png',),
                       ),
                     
                     ],
                     
                     ),
                    ),
                    
                ],
                
              ),      
              

               Center(
                
                child: Text('2'),
                
              ),
               Center(
                child: Text('3'),
              ),
               Center(
                child: Text('4'),
              ),
               Center(
                child: Text('5'),
              ),   
            ],
            
            ),
            
          ),  
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               CustomMoreSneker(),
               CustomMoreSneker(),
             ],
           ),
         ),
         SizedBox(
          height: 15,
         )
        ],
      ),
      ),
    );
    
  }
}



