import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;
  bool ismute = false;
  bool icon = false;

  List artist = [
    "assets/images/bad.jpg",
    "assets/images/nehu.jpg",
    "assets/images/aru.jpg",
    "assets/images/arman.jpg",
  ];

  List artname = [
    "Badshah",
    "Neha kakkar",
    "Arijit sing",
    "arman malik",
  ];

  List artsub = [
    "Rapper",
    "Singer",
    "Singer",
    "Singer",
  ];

  List<Audio> songg = [
    Audio("assets/audio/mann.mp3"),
    Audio("assets/audio/apna.mp3"),
    Audio("assets/audio/company.mp3"),
    Audio("assets/audio/ek.mp3"),
    Audio("assets/audio/woh.mp3"),
    Audio("assets/audio/le.mp3"),
  ];

  List immg = [
    "assets/images/man.jpg",
    "assets/images/apna.jpg",
    "assets/images/company.jpg",
    "assets/images/ek.jpg",
    "assets/images/woh.jpeg",
    "assets/images/lehnga.jpg",
  ];

  List naam = [
    "Mann Meri Jaan",
    "Apna bana le..",
    "Comapny",
    "Ek din pyar",
    "Woh",
    "Lehnga",
  ];

  List subnaam = [
    "king",
    "arijit sing",
    "Emiway bantai",
    "Mc stan",
    "ikka | dino | badshah",
    "Jass manek",
  ];

  void initaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Playlist(audios: songg),
        autoStart: false, showNotification: true);
  }

  Future<void> playmusic() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> muteorunmute() async {
    await assetsAudioPlayer!.setVolume(ismute ? 1 : 0);
    ismute = !ismute;
    notifyListeners();
  }



  void playAudio()
  {
    assetsAudioPlayer!.play();
  }
  void pauseAudio()
  {
    assetsAudioPlayer!.pause();
  }

  List subname = [
    "Badshah | Aashtha gill",
    "Badshah | Nikhita Gandhi",
    "Badshah | Aashtha gill",
    "Badshah",
    "Badshah",
    "Badshah",
  ];

  List name = [
    "Pani Pani-club mix",
    "Jugnu",
    "Dj Wale Babu",
    "Mercy",
    "Tabahi",
    "Genda phool",
  ];

  List<Audio> badsong = [
    Audio("assets/audio/bad1.mp3"),
    Audio("assets/audio/jugnu.mp3"),
    Audio("assets/audio/dj.mp3"),
    Audio("assets/audio/mercy.mp3"),
    Audio("assets/audio/tabahi.mp3"),
    Audio("assets/audio/genda.mp3"),
  ];

  List badimg = [
    "assets/images/pani.jpg",
    "assets/images/jugnu.jpg",
    "assets/images/dj.jpg",
    "assets/images/mer.jpg",
    "assets/images/tab.jpg",
    "assets/images/genda.jpg",
  ];

  void allsong() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(Playlist(audios: badsong),
        autoStart: false, showNotification: true);
  }
  Future<void> nextsong() async {
    icon = true;
    await assetsAudioPlayer!.next();
    notifyListeners();
  }
  Future<void> previoussong() async {
    icon = true;
    await assetsAudioPlayer!.previous();
    notifyListeners();
  }
  int i=0;

  void nextimg()
  {
    i++;
    notifyListeners();
  }
  void preimg()
  {
    i--;
    notifyListeners();
  }

}
