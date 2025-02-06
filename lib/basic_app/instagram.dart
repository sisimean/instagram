import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Add_Screen.dart';
import 'Notification.dart';
import 'ProfileMe.dart';
import 'ProfileScreen_2.dart';
import 'ProfileScreen_3.dart';
import 'ProfileScreen_4.dart';
import 'ProfileScreen_5.dart';
import 'ProjectScreen_4.dart';
import 'Search.dart';
import 'Video_Screen.dart';
import 'chat_ig.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _shouldHideAppBar() ? null : _buildAppBar(),
      // Hide AppBar conditionally
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  bool _shouldHideAppBar() {
    return _currentIndex == 1 ||
        _currentIndex == 2 ||
        _currentIndex == 3 ||
        _currentIndex == 4;
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationsScreen(),
              ),
            );
          },
          child: const Icon(Icons.favorite_border),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(),
              ),
            );
          },
          child: Image.network(
              'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/instagram-dm-direct-message-icon.png',
              width: 24,
              height: 20),
        ),
        const SizedBox(width: 8),
      ],
      title: const Text(
        "Instagram",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontFamily: "Lobster",
        ),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 1:
        return const Search();
      case 2:
        return const NewPostScreen();
      case 3:
        return const VideoScreen();
      case 4:
        return const ProfileMe();
      default:
        return _buildHomeScreen();
    }
  }

  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onNavTapped,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
      ],
    );
  }

  Widget _buildHomeScreen() {
    return ListView(
      children: [
        _buildStoriesSection(),
        const Divider(),
        _profilePost(),
        _profilePostThree(),
        _profilePostfour(),
        _profilePostfive(),
      ],
    );
  }

  Widget _buildStoriesSection() {
    final List<String> storyImages = [
      'https://pbs.twimg.com/profile_images/1302423818409975809/evBuVQa9_400x400.jpg',
      'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
      'https://media.femalemag.com.sg/public/2019/03/51021013_237686723851021_5419594866899599564_n-cc-768x960.jpg?compress=true&quality=80&w=480&dpr=2.6',
      'https://imgcdn.zigwheels.my/medium/gallery/exterior/5/1614/ferrari-f8-tributo-21467.jpg',
      'https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg',
      'https://sketchok.com/images/articles/06-anime/002-one-piece/26/16.jpg',
    ];

    final List<String> storyNames = [
      'Add Story',
      'JuJu',
      'LISA',
      'Daily.carstyle',
      'ROSE',
      'Usopp',
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [Colors.pink, Colors.orange, Colors.yellow],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(storyImages[index]),
                        ),
                      ),
                    ),
                    if (index == 0)
                      const Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, size: 15, color: Colors.white),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  storyNames[index],
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _profilePost() {
    return _buildPost(
      profileImage:
          'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
      username: 'JuJu',
      postImage:
          'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
      caption: "Hello, I am from Korea ❤️",
      likes: '999 Likes',
      comments: 'View all 520 comments',
    );
  }

  Widget _buildPost({
    required String profileImage,
    required String username,
    required String postImage,
    required String caption,
    required String likes,
    required String comments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profilescreen_2(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    profileImage,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
        _buildPostActions(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(caption),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(comments, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _profilePostThree() {
    return _buildPostThree(
      profileImage:
          'https://imgcdn.zigwheels.my/medium/gallery/exterior/5/1614/ferrari-f8-tributo-21467.jpg',
      username: 'Daily.carstyle',
      postImage:
          'https://www.electriccars.ph/app/web/upload/medium/bz3-1-1955.jpg',
      caption: "The best Car 2025 🚙",
      likes: '1830 Likes',
      comments: 'View all 120 comments',
    );
  }

  Widget _buildPostThree({
    required String profileImage,
    required String username,
    required String postImage,
    required String caption,
    required String likes,
    required String comments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profilescreen_3(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    profileImage,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
        _buildPostActions(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(caption),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(comments, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _profilePostfour() {
    return _buildPostfour(
      profileImage:
          'https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg',
      username: 'ROSE',
      postImage:
          'https://images.lifestyleasia.com/wp-content/uploads/sites/2/2024/11/19115013/untitled-design-2024-11-12t170849-678-1600x900.jpeg',
      caption: "Hello💙💙💙",
      likes: '3,544,503 Likes',
      comments: 'View all 10,823 comments',
    );
  }

  Widget _buildPostfour({
    required String profileImage,
    required String username,
    required String postImage,
    required String caption,
    required String likes,
    required String comments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profilescreen_4(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    profileImage,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
        _buildPostActions(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(caption),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(comments, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _profilePostfive() {
    return _buildPostfive(
      profileImage:
          'https://media.femalemag.com.sg/public/2019/03/51021013_237686723851021_5419594866899599564_n-cc-768x960.jpg?compress=true&quality=80&w=480&dpr=2.6',
      username: 'LISA',
      postImage:
          'https://imageio.forbes.com/specials-images/imageserve/66d61305ddcd33bb27d0c844/2022-Bulgari-Aurora-Awards-in-Seoul---Photo-Call/0x0.jpg?format=jpg&crop=2230,1486,x0,y100,safe&width=960',
      caption: "My first coin toss experience with @guinness",
      likes: '3,404,541 Likes',
      comments: 'View all 19,075 comments',
    );
  }

  Widget _buildPostfive({
    required String profileImage,
    required String username,
    required String postImage,
    required String caption,
    required String likes,
    required String comments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profilescreen_5(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    profileImage,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          width: double.infinity,
          alignment: Alignment.center,
          child: Image.network(
            postImage,
            fit: BoxFit.cover,
          ),
        ),
        _buildPostActions(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(caption),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(comments, style: const TextStyle(color: Colors.grey)),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

Widget _buildPostActions() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.favorite_border, size: 28),
            SizedBox(width: 15),
            Icon(CupertinoIcons.chat_bubble, size: 28),
            SizedBox(width: 15),
            Icon(Icons.send, size: 28),
          ],
        ),
        Icon(Icons.bookmark_border, size: 28),
      ],
    ),
  );
}
