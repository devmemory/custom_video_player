import 'package:custom_video_player/custom_video_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _videoUrl =
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom video player example'),
      ),
      body: Center(
        child: VideoPlayerWidget(
          widgetSize: const Size(400, 300),
          placeHolder: const Center(
            child: CircularProgressIndicator(),
          ),
          videoOption: VideoOption.full,
          videoController:
              CustomVideoController(videoUrl: _videoUrl, aspectRatio: 16 / 9),
        ),
      ),
    );
  }
}
