import 'package:flutter/material.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Displaying Image instead of YouTube Video
            Positioned.fill(
              child: Image.asset(
                "videos/cat_gif.gif", // Replace with your image file
                fit: BoxFit.cover,
              ),
            ),
            // Profile & Follow button moved to bottom-left
            Positioned(
              left: 10,
              bottom: 20,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv309Nsi3LgXYEbkx2IKuCc8RJN1jLva6iAA&s'), // Profile Image
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'vogue_blackboxx',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        'Sponsored',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                    ),
                    child: const Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            // Like, Comment, Share Icons (Bottom-right)
            Positioned(
              right: 15,
              bottom: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                  const Text('479', style: TextStyle(color: Colors.white, fontSize: 14)),

                  const SizedBox(height: 10),

                  IconButton(
                    icon: const Icon(Icons.comment, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                  const Text('7', style: TextStyle(color: Colors.white, fontSize: 14)),

                  const SizedBox(height: 10),

                  IconButton(
                    icon: const Icon(Icons.send_outlined, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                  const Text('Share', style: TextStyle(color: Colors.white, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
