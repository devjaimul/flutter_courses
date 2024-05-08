import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: 'home',
     routes:
     {
       'home':(context) => Home(),
       'profile':(context) => Profile(),
       'setting':(context) => Setting(),
     },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home '),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
            Navigator.pushReplacementNamed(context, 'profile');
            }, child: Text('profile')),
            ElevatedButton(onPressed: () {Navigator.pushNamed(context, 'setting');}, child: Text('setting')),
          ],
        ),
      ),
    );
  }
}
class Profile extends StatelessWidget {

  const Profile({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      backgroundColor: Colors.teal.shade200,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);
            }, child: Text('home')),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacementNamed(context, 'setting',arguments: {"name":'Akik'});
            }, child: Text('setting')),
          ],
        ),
      ),
    );
  }
}
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    final args= ModalRoute.of(context)?.profile.arguments as Map<String,String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      backgroundColor: Colors.red.shade200,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false);}, child: Text('home')),
            ElevatedButton(onPressed: () {Navigator.pushNamed(context, 'profile');}, child: Text('profile')),
          ],
        ),
      ),
    );
  }
}
