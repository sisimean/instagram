import 'package:flutter/material.dart';

class Profilescreen_4 extends StatefulWidget {
  const Profilescreen_4({Key? key}) : super(key: key);

  @override
  State<Profilescreen_4> createState() => _Profilescreen_4();
}

class _Profilescreen_4 extends State<Profilescreen_4> {
  final List<String> productImages = [
    'https://images.lifestyleasia.com/wp-content/uploads/sites/2/2024/11/19115013/untitled-design-2024-11-12t170849-678-1600x900.jpeg',
    'https://cdn1-production-images-kly.akamaized.net/c9is7bXuCRiKnQuQLxEh9gHWMdw=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4354268/original/017982500_1678459179-WhatsApp_Image_2023-03-09_at_21.31.34.jpeg',
    'https://media.baoquangninh.vn/upload/image/202411/medium/2279184_6a36a50aa9404b51829046f0e20c2aa7.jpg',
    'https://dam.mediacorp.sg/image/upload/s--A725E51w--/c_crop,h_608,w_811,x_1,y_89/c_fill,g_auto,h_622,w_830/fl_relative,g_south_east,l_one-cms:core:watermark:ap_data-1,w_0.1/f_auto,q_auto/v1/one-cms/core/sulwhasoo_night_at_the_met_40574.jpg?itok=xMGf8vTR',
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
    "ROSE",
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
    child: Image.network('https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg'),
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
        '1,099',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      SizedBox(width: 55),
      Text(
        '82.8M',
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
                  'ROSE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '🔁resesarerosie.Ink.to/rosie',
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
