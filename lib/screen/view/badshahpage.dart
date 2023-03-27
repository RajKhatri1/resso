import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class badshah extends StatefulWidget {
  const badshah({Key? key}) : super(key: key);

  @override
  State<badshah> createState() => _badshahState();
}

class _badshahState extends State<badshah> {
  Homeprovider? trueprovider;
  Homeprovider? falseprovider;

  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<Homeprovider>(context, listen: true);
    falseprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
          actions: [
            Icon(Icons.settings,color: Colors.white,)
          ],
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: falseprovider!.badimg.length,
            itemBuilder: (context, index) {
              return InkWell(onTap: () {
                trueprovider!.allsong();
                Navigator.pushNamed(context, 'song' ,arguments: index);
              },child: bad(index));
            },
          ),
        ),
      ),
    );
  }

  Widget bad(int inedx) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "${falseprovider!.badimg[inedx]}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${falseprovider!.name[inedx]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "${falseprovider!.subname[inedx]}",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Icon(
              Icons.more_vert,
              size: 35,
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(color: Colors.white),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
