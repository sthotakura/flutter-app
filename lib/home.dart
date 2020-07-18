import 'package:flutter/material.dart';
import 'package:tiktok_clone/home_final.dart';
import 'package:tiktok_clone/video_recorder.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: _controller,
          children: [
            Home(),
            VideoRec(),
          ],
        ));
  }
}
