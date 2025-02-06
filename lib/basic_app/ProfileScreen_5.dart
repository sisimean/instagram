import 'package:flutter/material.dart';

class Profilescreen_5 extends StatefulWidget {
  const Profilescreen_5({Key? key}) : super(key: key);

  @override
  State<Profilescreen_5> createState() => _Profilescreen_4();
}

class _Profilescreen_4 extends State<Profilescreen_5> {
  final List<String> productImages = [
    'https://imageio.forbes.com/specials-images/imageserve/66d61305ddcd33bb27d0c844/2022-Bulgari-Aurora-Awards-in-Seoul---Photo-Call/0x0.jpg?format=jpg&crop=2230,1486,x0,y100,safe&width=960',
    'https://upload.wikimedia.org/wikipedia/commons/1/1f/20240911_Lisa_MTV_VMAs_06_%28cropped%29.png',
    'https://www.nme.com/wp-content/uploads/2024/02/lisa-blackpink-the-white-lotus-getty.jpg',
    'https://5000smag.com/wp-content/uploads/2023/07/Lisa.jpg',
    'https://m.maccosmetics.co.nz/media/export/cms/culture/projectl_mainimage_640x640.jpg',
  ];

  final List<String> personImages = [
    'https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=1024,format=auto/sites/default/files/images/methode/2018/09/12/3f44b570-b584-11e8-89ab-e29b0678280a_972x_195743.JPG',
    'https://newsimg.koreatimes.co.kr/2024/02/12/61850508-3140-4522-bdc4-efee40aee4c2.png',
    'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/3406x2271+0+0/resize/1100/quality/50/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F8c%2Ffd%2F16f6a1674c1cb5930b4a09f413fb%2Fblackpink-coachella-2023.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "lalalalisa_m",
    style: const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    const SizedBox(width: 4),
    const Icon(Icons.verified, size: 18, color: Colors.blue),
    ],
    ),
    actions: [
    IconButton(
    icon: const Icon(Icons.more_vert, color: Colors.black),
    onPressed: () {
    // Add your logic for more actions
    },
    ),
    ],
    ),
    backgroundColor: Colors.grey.shade100,
    body: SafeArea(
    child: CustomScrollView(
    slivers: [
    SliverToBoxAdapter(
    child: Container(
    color: Colors.white,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
    child: ClipOval(
    child: SizedBox(
    width: 80,
    height: 80,
    child: Container(
    child: Image.network('https://media.femalemag.com.sg/public/2019/03/51021013_237686723851021_5419594866899599564_n-cc-768x960.jpg?compress=true&quality=80&w=480&dpr=2.6'),
    ),
    ),
    ),
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    children: [
    SizedBox(width: 35),
    Text(
    '1,106',

    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    SizedBox(width: 55),
    Text(
    '105M',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    SizedBox(width: 55),
    Text(
    '0',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    ],
    ),
    Row(
    children: [
    SizedBox(width: 45),
    Text(
    'Posts',
    style: TextStyle(fontSize: 13),
    ),
    SizedBox(width: 45),
    Text(
    'Followers',
    style: TextStyle(fontSize: 13),
    ),
    SizedBox(width: 35),
    Text(
    'Following',
    style: TextStyle(fontSize: 13),
    ),
    ],
    ),
    ],
    ),
    ],
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 17),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'LISA\n🖤💗',
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 5),
    Text(
    '🔁lisa.Ink.to/AlterEgo',
    style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    minimumSize: const Size(150, 40),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    child: const Text('Following'),
    ),
    ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
    minimumSize: const Size(150, 40),
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.circular(10),
    ),
    ),
      child: const Text('Message'),
    ),
      IconButton(
        icon: const Icon(Icons.person_add_alt_1),
        onPressed: () {},
      ),
    ],
    ),
      SizedBox(height: 5),
      SizedBox(
        width: double.infinity,
        height: 30,
        child: TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          tabs: [
            Tab(icon: Icon(Icons.grid_on)),
            Tab(icon: Icon(Icons.video_collection)),
            Tab(icon: Icon(Icons.person)),
          ],
        ),
      ),
    ],
    ),
    ),
    ),
      SliverFillRemaining(
        child: TabBarView(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: productImages.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(productImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Center(child: Text('Videos Tab')),
            GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: personImages.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(personImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ],
    ),
    ),
        ),
    );
  }
}
