import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class TextPostPage extends StatelessWidget {
  const TextPostPage({super.key});
  final String postContent = "This is a sample text post.";

  void _sharePost(BuildContext context) {
    // Simulate generating a shareable link
    final String shareableLink = "https://example.com/post/123";
    Share.share("Check out this post: $shareableLink");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(postContent, style: const TextStyle(fontSize: 18)),
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
