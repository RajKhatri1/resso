import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resso/screen/provider/homeprovider.dart';

class Music_screen extends StatefulWidget {
  const Music_screen({Key? key}) : super(key: key);

  @override
  State<Music_screen> createState() => _Music_screenState();
}

class _Music_screenState extends State<Music_screen> {
  Homeprovider? trueprovider;
  Homeprovider? falseprovider;

  @override
  void initState() {
    super.initState();
    Provider.of<Homeprovider>(context, listen: false).initaudio();
  }

  @override
  Widget build(BuildContext context) {
    trueprovider = Provider.of<Homeprovider>(context, listen: true);
    falseprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "For You",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        size: 25,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("assets/images/man.jpg", fit: BoxFit.cover),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite,
                    size: 35,
                    color: Colors.white,
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.comment,
                    size: 35,
                    color: Colors.white,
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.share,
                    size: 35,
                    color: Colors.white,
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.download,
                    size: 30,
                    color: Colors.white60,
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.queue_music,
                    size: 30,
                    color: Colors.white60,
                  ),
                  // SizedBox(width: 20,),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white60,
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Slider(
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                autofocus: true,
                value: 0,
                onChanged: (value) {},
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        falseprovider!.playmusic();
                      },
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 35,
                      )),
                  IconButton(
                    onPressed: () {
                      // trueprovider!.playorpause();
                    },
                    icon: Icon(
                        trueprovider!.icon ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 35),
                  ),
                  InkWell(
                      onTap: () {
                        falseprovider!.playmusic();
                      },
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 35,
                      )),
                  IconButton(
                    onPressed: () {
                      trueprovider!.muteorunmute();
                    },
                    icon: Icon(
                        trueprovider!.ismute
                            ? Icons.volume_off
                            : Icons.volume_up,
                        color: Colors.white,
                        size: 35),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
