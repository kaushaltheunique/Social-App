import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class VideoPostPage extends StatelessWidget {
  const VideoPostPage({super.key});
  final String videoUrl = "https://example.com/sample_video.mp4";

  void _sharePost(BuildContext context) {
    // Simulate generating a shareable link
    final String shareableLink = "https://example.com/post/456";
    Share.share("Check out this video post: $shareableLink");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.videocam, size: 100),
          const SizedBox(height: 20),
          const Text("Sample Video Post", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _sharePost(context),
            child: const Text("Share"),
          ),
        ],
      ),
    );
  }
}
