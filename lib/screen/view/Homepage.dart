import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/main.dart';
import 'package:resso/utlis/variables.dart';

import '../provider/homeprovider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  Homeprovider? trueprovider;
  Homeprovider? falseprovider;

  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<Homeprovider>(context, listen: true);
    falseprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 315,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black, size: 25),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Search",
                                style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.music_note,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red.shade200),
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer)
                                ], shape: BoxShape.circle, color: Colors.red),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Your story",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/raj.png"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "__Raj__",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/yoyo.jpeg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "_yo_yo_",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/emiway.jpg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "emiway",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 3,
                                      style: BorderStyle.solid),
                                  shape: BoxShape.circle,
                                  color: Colors.red.shade200),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/mc.jpg"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mc_stan",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Artists you may like",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                    Container(
                      height: 200,
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      child: GridView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),itemCount: falseprovider!.artist.length, itemBuilder: (context, index) {
                        return InkWell(onTap: () {
                          Navigator.pushNamed(context, 'badshah', arguments: index);
                        },child: diya(index));
                      },),
                    ), 
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pick 'n' Mix",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      // return Container(height: 100,width: 100,color: Colors.red,margin: EdgeInsets.all(5),);
                      return InkWell(
                          onTap: () {
                            jenil = index;
                            Navigator.pushNamed(context, 'Music2');
                          },
                          child: rajj(index));
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, mainAxisExtent: 300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget diya(index)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'badshah');
          },
          child: Container(
            height: 150,
            width: 120,
            color: Colors.white,
            child: Image.asset("${falseprovider!.artist[index]}",
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${falseprovider!.artname[index]}",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "${falseprovider!.artsub[index]}",
          style: TextStyle(
            color: Colors.white60,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }

  Widget rajj(int index) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 70,
          width: 70,
          color: Colors.yellow,
          child: Image.asset(
            "${falseprovider!.immg[index]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${falseprovider!.naam[index]}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${falseprovider!.subnaam[index]}",
              style: TextStyle(color: Colors.white60),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
