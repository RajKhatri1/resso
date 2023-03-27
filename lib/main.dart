import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/provider/homeprovider.dart';
import 'package:resso/screen/view/Homepage.dart';
import 'package:resso/screen/view/badshahpage.dart';
import 'package:resso/screen/view/badsongpage.dart';
import 'package:resso/screen/view/music2page.dart';
import 'package:resso/screen/view/music3page.dart';
import 'package:resso/screen/view/music4page.dart';
import 'package:resso/screen/view/music5page.dart';
import 'package:resso/screen/view/musicPage.dart';
import 'package:resso/screen/view/musicpage1.dart';

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
          'Music1' : (context) => apna_screen(),
          'Music2' : (context) => music2(),
          'Music3' : (context) => Music3(),
          'Music4' : (context) => music4(),
          'Music5' : (context) => music5(),
          'badshah' : (context) => badshah(),
          'song' : (context) => song(),

        },
      ),
    ),
  );
}
