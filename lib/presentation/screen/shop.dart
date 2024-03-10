
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.white54,
     ),
      body:Center(
      child: Text('dfhcgjgkn',
      ),
      ),
      
    );
    
  }
}

// DefaultTabController(length: 5, child:
//        Column(
//         children: [
//           TabBar(
//             isScrollable: true,
//             tabs: [
//                 Tab(
//                 text: 'Nike', 
//               ),
//               Tab(
//                 text: 'Adidas', 
//               ),
//               Tab(
//                 text: 'Jordan', 
//               ),
//               Tab(
//                 text: 'Puma', 
//               ),
//               Tab(
//                 text: 'Reebok', 
//               ),
               
//            ],
//            labelColor: Colors.black,
//           ),
//           Expanded(
//             child: TabBarView(children: [
//               Center(
//                 child: OverflowBox(
//                   maxWidth: double.infinity, 
//                   maxHeight: double.infinity,
//                   child: Container(
                    
//                     width: 237,
//                     height: 343,
//                      decoration: BoxDecoration(
//                     color: AppColors.buttoncolor,  
//                      borderRadius: BorderRadius.circular(20), 
                     
//                      ),
//                      child: Stack(
//                       clipBehavior: Clip.antiAlias,
//                     children: [
                      
//                       Center(
                        
//                         child: OverflowBox(
//                           maxWidth: double.infinity,
//                           maxHeight: double.infinity,
//                           child: Image.asset('assets/pngs/sneak1.png',
//                            fit: BoxFit.cover,
//                            width: 350,
//                            height: 330,
//                           alignment: Alignment.topLeft,
                        
//                           ),
//                         ),
                        
//                       ),
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: Padding(
//                           padding: const EdgeInsets.all(15.0),
//                           child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Nike', 
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white),
                                  
//                                   ),
//                                   SizedBox(
//                                     height: 15,
//                                   ),
//                                   Text('EPIC-REACT',
//                                   style: TextStyle(
//                                     fontSize: 24,
//                                     color: Colors.white,
//                                   ),
//                                   ),
//                                   SizedBox(
//                                     height: 8,
//                                   ),
//                                   Text('S130.00',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                   color: Colors.white,
//                                   ),
//                                   ),
//                             ],
//                           ),
                             
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: IconButton(
//                           onPressed: () {
//                             // Обработчик нажатия на кнопку Like
//                           },
//                           icon: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Icon(
//                               Icons.favorite_border,
//                               color: Colors.white,
                          
                              
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomRight,
//                         child: IconButton(
//                           onPressed: (){},
//                            icon: Padding(
//                             padding: const EdgeInsets.all(5.0),
//                             child: Icon(
//                               Icons.arrow_right_alt_sharp,
//                               color: Colors.white,
//                               size: 33,
                          
                              
//                             ),
//                           ),
//                           ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 )
                 
//                   // child: Padding(
//                   //   padding: const EdgeInsets.all(8.0),
//                   //   child: Text('Nike',),
//                   // ),
                  
//                   // ),
//               ),
//                Center(
//                 child: Text('2'),
                
//               ),
//                Center(
//                 child: Text('3'),
//               ),
//                Center(
//                 child: Text('4'),
//               ),
//                Center(
//                 child: Text('5'),
//               ),

              
//             ]
//             ),
//           ),
//         ],
//       ),
//       ),
//     );
    
//   }
// }