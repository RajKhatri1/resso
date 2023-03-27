import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
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
                              child: Image.asset("assets/images/bad.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Badshah",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rapper",
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 120,
                            color: Colors.white,
                            child: Image.asset("assets/images/nehu.jpg",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Neha kakkar",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Singer",
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 120,
                            color: Colors.white,
                            child: Image.asset("assets/images/aru.jpg",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Arijit sing",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Singer",
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 120,
                            color: Colors.white,
                            child: Image.asset("assets/images/arman.jpg",
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Armaan Malik",
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Singer",
                            style: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                  height: 20 ,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Expanded(
                      //   child: GridView.builder(itemCount: 2 ,shrinkWrap: true,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
                      //     return song();
                      //   },),
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Music');
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/man.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Maan Meri Jaan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "King",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Music1');
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/apna.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Apna bana le..(mix)",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Arijit sing",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context,  'Music2');
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/company.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Company",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Emiway Bantai",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Music3 ');
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/woh.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "WOH",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ikka,Dino James,Badsh...",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, 'Music4');
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/ek.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ek din pyar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Mc Stan",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          InkWell(
                            onTap: () {
                                Navigator.pushNamed(context, 'Music5');
                            },
                            child: Row (
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "assets/images/lehnga.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lehanga",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Jass Manak",
                                      style: TextStyle(color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
