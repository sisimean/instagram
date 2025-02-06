import 'package:flutter/material.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({Key? key}) : super(key: key);

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  int selectedTab = 0;
  List<String> imageUrls = [
    'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
    'https://i.pinimg.com/236x/18/c5/df/18c5df9541f329a4a9db307ccb04bc7e.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQftFN81YPLk8lb0T7T86JSqf7Vp5uBvUeS3g&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Close the screen
          },
        ),
        title: const Text(
          "New post",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to next screen
            },
            child: const Text(
              "Next",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // Top Image Preview Section with Camera Icon
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Positioned(
              //   top: 10,
              //   right: 10,
              //   child: IconButton(
              //     icon: const Icon(Icons.camera_alt, color: Colors.white),
              //     onPressed: () {
              //       // Open Camera Functionality
              //     },
              //   ),
              // ),
            ],
          ),

          // Media Picker Section
          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  // Recents Dropdown & Select Multiple Button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Recents",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                // Select multiple images
                              },
                              icon: const Icon(Icons.copy, color: Colors.white),
                              label: const Text("Select Multiple"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade800,
                              ),
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              icon: const Icon(Icons.camera_alt,
                                  color: Colors.white),
                              onPressed: () {
                                // Open Camera
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Grid View for Media Thumbnails
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                      ),
                      itemCount: 12, // Placeholder for media items
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.grey.shade800,
                          child: Image.network(
                            imageUrls[index % imageUrls.length],
                            // Alternates images
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Navigation for Post Types
          Container(
            height: 60,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBottomTab("POST", 0),
                buildBottomTab("STORY", 1),
                buildBottomTab("REEL", 2),
                buildBottomTab("LIVE", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build bottom tabs
  Widget buildBottomTab(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: Text(
        title,
        style: TextStyle(
          color: selectedTab == index ? Colors.white : Colors.grey,
          fontSize: 16,
          fontWeight:
              selectedTab == index ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
