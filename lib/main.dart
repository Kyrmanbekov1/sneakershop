import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneakershop/presentation/providers/bag_provider.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/presentation/screen/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        return  ChangeNotifierProvider(
          create: (context) => BagProvider(),
          child: MaterialApp(
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
               backgroundColor: Colors.white10,
               elevation: 0, 
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ),
        );
      },
    );
  }
}