import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ImagePostPage extends StatelessWidget {
  const ImagePostPage({super.key});

  final String imageUrl = "https://example.com/sample_image.jpg";

  void _sharePost(BuildContext context) {
    // Simulate generating a shareable link
    final String shareableLink = "https://example.com/post/789";
    Share.share("Check out this image post: $shareableLink");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.image, size: 100),
          const SizedBox(height: 20),
          const Text("Sample Image Post", style: TextStyle(fontSize: 18)),
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
