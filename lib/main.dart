import 'package:flutter/material.dart';

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
    //ai 2 vabei kaj kora jay

    // old
    print(MediaQuery.of(context).displayFeatures);

    //new
    print(MediaQuery.displayFeaturesOf(context));

    print(MediaQuery.sizeOf(context));
    print(MediaQuery.sizeOf(context).width);
    print(MediaQuery.sizeOf(context).height);
    print(MediaQuery.orientationOf(context));
    print(MediaQuery.devicePixelRatioOf(context));

    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        if(orientation==Orientation.portrait){
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.teal,
          );
        }
        else {
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue.shade300,
          );
        }
      },),
    );
  }
}
