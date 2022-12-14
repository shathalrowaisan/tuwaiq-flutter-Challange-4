import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatha_challenge4/Controller/page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final pageControll = Get.put(MyPageController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            // quotes from API
            Center(
              child: GetBuilder<MyPageController>(
                builder: (_){
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(pageControll.quotesData[0].toString()),
                  ) ;
                }
              ),
            ),

            // next button
            Center(child: ElevatedButton(onPressed: (){pageControll.nextQuote();}, child: const Text('Next'))),
          ],
        ),
      ),
    );
  }
}