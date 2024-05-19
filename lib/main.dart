import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: Column(
  children: [
    
  //   ResponsiveBuilder(
  //   builder: (context, sizingInformation) {
  //       // Check the sizing information here and return your UI
  //       if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
  //     return Container(color:Colors.blue);
  //   }
  //
  //   if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
  //     return Container(color:Colors.red);
  //   }
  //
  //   if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
  //     return Container(color:Colors.yellow);
  //   }
  //
  //   return Container(color:Colors.purple);
  // },
  //
  // )

  ],
),
    );
  }
}
