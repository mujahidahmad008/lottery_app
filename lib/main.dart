

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lottery App'),),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Center(
              child: Text('lottery wining number is 4')),
            const SizedBox(height: 20),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: x==4? Colors.teal :Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),

              ),
             child:  Padding(
               padding:  const EdgeInsets.all(15.0),
               child: x == 4 ?
                Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children:  [
                  const Icon(Icons.done_all, color: Colors.green,size: 35,),
                   const SizedBox(height: 15,),
                   Text('congratulation you have won the lottery,your number is $x \n',textAlign: TextAlign.center,)
                 ],
               ):
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       const Icon(Icons.error,color: Colors.red, size: 40,),
                       SizedBox(height: 15,),
                       Text('Better luck next time your number is $x\nt try again', textAlign: TextAlign.center,)
                     ],
                   )
             ),
            )
          ],
        ),
          floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {
            });
          },
            child: const Icon(Icons.refresh),
      ),
      ),
    );
  }
}

