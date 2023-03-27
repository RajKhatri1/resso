import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;
  bool ismute = false;
  bool icon = false;

  void initaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/mann.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  void itinaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/apna.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  void comaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/company.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  void wohaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/woh.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  void ekaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/ek.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  void leaudio() {
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer!.open(
      Audio("assets/audio/le.mp3"),
      showNotification: true,
      autoStart: false,
    );
  }

  Future<void> playmusic() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> muteorunmute() async {
    await assetsAudioPlayer!.setVolume(ismute ? 1 : 0);
    ismute = !ismute;
    notifyListeners();
  }

  Future<void> playorpause() async {
    await assetsAudioPlayer!.playOrPause();
    icon = !icon;
    notifyListeners();
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
    await assetsAudioPlayer!.next();
    notifyListeners();
  }
  Future<void> previoussong() async {
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
