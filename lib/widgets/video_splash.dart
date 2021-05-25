import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localhub/screen/intro/intro_first.dart';
import 'package:video_player/video_player.dart';

class VideoSplash extends StatefulWidget {
  @override
  _VideoSplashState createState() => _VideoSplashState();
}

class _VideoSplashState extends State<VideoSplash> {
  VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/Final.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => IntroFirst()));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _controller.value.isInitialized
          ? SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
