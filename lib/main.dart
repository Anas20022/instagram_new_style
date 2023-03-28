import 'package:flutter/material.dart';
import 'package:instgram_new_style/ui/screens/PostClick.dart';
import 'package:instgram_new_style/ui/screens/home_page.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:HomePage() ,
      initialRoute: '/home_page',
      routes: {
        '/home_page' :(context) =>  HomePage(),
        '/PostClick' :(context) =>  PostClick(),

      },
    );
  }
}



