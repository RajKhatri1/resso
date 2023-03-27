import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class song extends StatefulWidget {
  const song({Key? key}) : super(key: key);

  @override
  State<song> createState() => _songState();
}

class _songState extends State<song> {
  Homeprovider? trueprovider;
  Homeprovider? falseprovider;
  @override
  Widget build(BuildContext context) {
    int ind = ModalRoute.of(context)?.settings.arguments as int;
    trueprovider = Provider.of<Homeprovider>(context, listen: true);
    falseprovider = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.white,
              child: Image.asset("${falseprovider!.badimg[trueprovider!.i]}", fit: BoxFit.cover),
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
                IconButton(
                  onPressed: () {
                    trueprovider!.previoussong();
                    trueprovider!.preimg();
                  },
                  icon:
                  Icon(Icons.skip_previous, color: Colors.white, size: 35),
                ),
                IconButton(
                  onPressed: () {
                    trueprovider!.playorpause();
                  },
                  icon: Icon(
                      trueprovider!.icon ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                      size: 35),
                ),
                IconButton(
                  onPressed: () {
                    trueprovider!.nextsong();
                    trueprovider!.nextimg();
                  },
                  icon: Icon(Icons.skip_next, color: Colors.white, size: 35),
                ),
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
    );
  }
}
