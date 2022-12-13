import 'package:flutter/material.dart';
import 'HomePage.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),


         },
  )); //MaterialApp
}
class HomeRoute extends StatelessWidget {
  const HomeRoute({key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cocktail App',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: HomePage(),
    );
  }
}
