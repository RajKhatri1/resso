import 'package:flutter/material.dart';

import '../../utlis/shared_pref.dart';

class spelsh extends StatefulWidget {
  const spelsh({Key? key}) : super(key: key);

  @override
  State<spelsh> createState() => _spelshState();
}

class _spelshState extends State<spelsh> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: FlutterLogo(size: 150,)
        ),
      ),
    );
  }

  Future<void> selectscreen() async {
    Shr shr = Shr();
    Map m1 = await shr.readShr();
    if (m1["check"] == true) {
      Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, 'home');
        },
      );
    }
    else
    {
      Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, 'singin');
        },
      );
    }
  }
}
