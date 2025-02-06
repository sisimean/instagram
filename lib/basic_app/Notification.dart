import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Notifications', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person_add, color: Colors.white),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Follow requests',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('Approve or decline requests',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('New', style: TextStyle(color: Colors.white, fontSize: 18)),
            Expanded(
              child: ListView(
                children: [
                  // _buildSectionHeader('Today'),
                  _buildNotificationItem(
                      'theclothesplus just shared a new reel.',
                      '31m',
                      'https://pbs.twimg.com/profile_images/1302423818409975809/evBuVQa9_400x400.jpg'),
                  _buildSectionHeader('Yesterday'),
                  _buildNotificationItem(
                      'gm_school_lab recently shared a new reel.',
                      '1d',
                      'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg'),
                  _buildSectionHeader('Last 7 Days'),
                  _buildNotificationItem(
                      'Daily.carstyle just shared a post.',
                      '1d',
                      'https://imgcdn.zigwheels.my/medium/gallery/exterior/5/1614/ferrari-f8-tributo-21467.jpg'),
                  _buildNotificationItem('ROSE just shared a new reel.', '2d',
                      'https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg'),
                  _buildNotificationItem('LISA is on Instagram.', '3d',
                      'https://media.femalemag.com.sg/public/2019/03/51021013_237686723851021_5419594866899599564_n-cc-768x960.jpg?compress=true&quality=80&w=480&dpr=2.6'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildNotificationItem(String text, String time, String imageUrl) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(text, style: TextStyle(color: Colors.white)),
      subtitle: Text(time, style: TextStyle(color: Colors.grey)),
      trailing: Icon(Icons.more_vert, color: Colors.white),
    );
  }
}
