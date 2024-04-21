import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [

          /*
          *  //flexible

          // Flexible(fit: FlexFit.tight,flex: 2, child: Container(height: 100,width: 100,color: Colors.teal,)),
          // Flexible(fit: FlexFit.tight, child: Container(height: 100,width: 100,color: Colors.yellow,)),
          // Flexible(fit: FlexFit.tight, child: Container(height: 100,width: 100,color: Colors.blue,)),

          //expanded
          Expanded(flex:3, child: Container(height: 100,width: 100,color: Colors.teal,)),
          Expanded(flex:1, child: Container(height: 100,width: 100,color: Colors.yellow,)),
          Expanded(flex:2, child: Container(height: 100,width: 100,color: Colors.blue,)),

*/

          SizedBox(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            child: FractionallySizedBox(
              heightFactor: 0.3,
              widthFactor: 0.9,
              child: Container(
                color: Colors.teal,
              ),
            ),
          ),
          AspectRatio(aspectRatio:16/12 ,child: Container(color: Colors.deepOrange,),)
        ],
      ),
    );
  }
}
