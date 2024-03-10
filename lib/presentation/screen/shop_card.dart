import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/presentation/consts/app_const.dart';
import 'package:sneakershop/presentation/models/email_model.dart';
import 'package:sneakershop/presentation/providers/bag_provider.dart';
import 'package:sneakershop/widgets/dio_settings.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({Key? key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<BagProvider>();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAdaptiveDialog(
              context: context,
              builder: (context) => SingleChildScrollView(
                child: AlertDialog(
                  title: Row(children: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Close')),
                    Spacer(),
                  TextButton(onPressed: (){
                      vm.clearCard();
                      Navigator.pop(context);
                  }, child: Text('Clear'))
                  ],),
                  content: Column(
                    
                    children: [
                      Container(
                        width: 100,
                        height: 80,
                        child: ElevatedButton(onPressed:(){
                          sendEmail(vm);
                        }, child: Text('Buy')),
                      ),
                       Container(
                        color: Colors.purple,
                                    width: 60,
                                    height: 40,
                                    child: Text('Price: \$${vm.totalPrice}',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                    ),
                                  ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 800,
                          height: 800,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: vm.sneakers.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 30,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    
                                    image: AssetImage(vm.sneakers[index], ),
                                    fit:  BoxFit.cover
                                    
                                    
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(vm.sneakers[index]),
                                     
                                    ),
                                 
                                  ],
                                ),

                                
                                //child: Text(vm.sneakers[index]),
                              );
                            },
                          
                          ),
                          
                        
                        ),
                      ),
                      
                    ],
                    
                  ),
                ),
              ),
            );
          },
          child: Text('Show Card'),
        ),
      ),
    );
  }
}
Future <void> sendEmail(BagProvider vm) async {
  final Dio dio = DioSettings().dio;
  final String sneakersMessage = vm.sneakers.join(', ');
  await dio.post('https://api.emailjs.com/api/v1.0/email/send?',
  data: EmailModel(
    templateId: AppConsts.template_id,
    serviceId: AppConsts.service_id,
    userId: AppConsts.user_id,
    accessToken: AppConsts.accessToken,
    templateParams: TemplateParams(
      fromName: 'Adil',
      toName:  'Asan',
      message: sneakersMessage,
    ),
  ).toJson()
  );
}