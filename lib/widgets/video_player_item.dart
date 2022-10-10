import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerItem({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((value) {
        _videoPlayerController.value.isPlaying;
        _videoPlayerController.play();
        _videoPlayerController.setVolume(1);
        _videoPlayerController.setLooping(true);
        
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: AspectRatio(
        aspectRatio: _videoPlayerController.value.aspectRatio,
        child: Stack(
          children: [
            VideoPlayer(
              _videoPlayerController,
              
            ),
            _videoPlayerController.value.isPlaying
                ? Container()
                : Center(
                    child: Icon(
                      Icons.play_arrow,
                      size: 1,
                      color: Colors.white.withOpacity(0.4),
                    ),
                  )
                  
          ],
        ),
      ),
    );
    
  }
}
