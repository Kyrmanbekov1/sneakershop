import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/presentation/providers/bag_provider.dart';
import 'package:sneakershop/theme/app_colors.dart';

class customsneaker extends StatelessWidget {
  const customsneaker({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.price,
    required this.containerColor,
  });
  final String imageAsset;
final String title;
final String price;
final Color containerColor  ;

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<BagProvider>();
    return Container(
      
      width: 237,
      height: 343,
       decoration: BoxDecoration(
        
      color: containerColor,  
       borderRadius: BorderRadius.circular(20), 
       
       ),
       
       child: Stack(
        //clipBehavior: Clip.antiAlias,
      children: [
        
        Center(
          
          child: OverflowBox(
            maxWidth: double.infinity,
            maxHeight: double.infinity,
            child: Image.asset(imageAsset,
             fit: BoxFit.cover,
             width: 350,
             height: 330,
            alignment: Alignment.topLeft,
          
            ),
          ),
          
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike', 
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white),
                    
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(title,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(price,
                    style: TextStyle(
                      fontSize: 16,
                    color: Colors.white,
                    ),
                    ),
              ],
            ),
               
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {
             vm.addToBag(title);
             vm.addToBag(imageAsset);
             vm.addToBag(price);
             
            },
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
            
                
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            onPressed: (){},
             icon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.arrow_right_alt_sharp,
                color: Colors.white,
                size: 33,
            
                
              ),
            ),
            ),
        ),
      ],
    ),
                    );
  }
}