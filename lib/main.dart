import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/provider/homeprovider.dart';
import 'package:resso/screen/view/Homepage.dart';
import 'package:resso/screen/view/Singinpage.dart';
import 'package:resso/screen/view/Singuppage.dart';
import 'package:resso/screen/view/badshahpage.dart';
import 'package:resso/screen/view/badsongpage.dart';
import 'package:resso/screen/view/music2page.dart';
import 'package:resso/screen/view/musicPage.dart';
import 'package:resso/screen/view/splesh_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Home_screen(),
          'Music' : (context) => Music_screen(),
          'Music2' : (context) => music2(),

          'badshah' : (context) => badshah(),
          'song' : (context) => song(),
          'home' : (context) => Home_screen(),

        },
      ),
    ),
  );
}
