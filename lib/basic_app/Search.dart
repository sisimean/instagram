import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();

  final List<String> imageUrls = [
    // Replace these with your image URLs
    'https://www.cartoq.com/wp-content/uploads/2012/05/Lamborghini-Aventador-Wallpaper.jpg',
    'https://www.nme.com/wp-content/uploads/2024/11/blackpink-rose-k-pop-fan-culture-trained-perfect-interview.jpg',
    'https://www.nme.com/wp-content/uploads/2024/02/lisa-blackpink-the-white-lotus-getty.jpg',
    'https://www.shutterstock.com/image-photo/beautiful-young-asian-woman-pointing-600nw-2341582245.jpg',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7b0e01ca-065b-46fe-8d59-4b0a6049b208/dg9du9s-25241c47-a748-45ec-ac3c-52b1d5aedf2a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzdiMGUwMWNhLTA2NWItNDZmZS04ZDU5LTRiMGE2MDQ5YjIwOFwvZGc5ZHU5cy0yNTI0MWM0Ny1hNzQ4LTQ1ZWMtYWMzYy01MmIxZDVhZWRmMmEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.2pueWXZDoBjJJiM1BP1wcuFEwTOsT0gsm4SnAfrKj6I',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5ypWM_BYPwArdEagKShnnVIFjQmIA7E7hw&s',
    'https://preview.redd.it/unj4c2swcfeb1.png?width=640&crop=smart&auto=webp&s=18a831acaebfa5c9bc09687730a75f687196502e',
    'https://sabimages.com/wp-content/uploads/2024/08/cute-korean-girl-pic-dp70.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSVv72EDjsIzofY44WUDLvNuKkYntZ4uV_YKxq2e8-UvAOr0OJl_KRA0qyUYSXHveb_Ks&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTucuuBds4jUDaVE1DqmXTEnQnbUEFRaoRdY29hqbgnEgYqn4ecjB2IkpBWT2g32qy2IOE&usqp=CAU',
    'https://i.pinimg.com/originals/20/26/34/202634e99ac704efe78f96a1c2bacab3.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjDvFE1y2DmAn2YzGKKjQE9BWmvqv6gbIAHF4XA-jjLjW08xsXulylSTttVX3matwycRc&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxY9OjLdWG4eLiaPhqvVHJ1elNVwYRf8Kui6JHXlhAE8WPCamZeNU9sdZuTyMpVpZxT_w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGzMAEDcB0Xde999mKs2NYm4uEi2fL8b4ifpb_bWdfd1BGfwm1jrRJ_hBkF-fBOi7G-Y0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHu6Y5SBtkJ2wlI16f0LOi3LkTzUg9u7CtjojpWPkmdaRj53HXqizcdPhMEJjjeh1B15k&usqp=CAU',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    const Icon(Icons.search, color: Colors.black),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          hintText: 'Search ',
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Grid View
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 images per row
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      // Image
                      Container(
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: NetworkImage(imageUrls[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Overlay Icon (e.g., for video posts)
                      if (index % 4 == 0) // Example: Show overlay icon every 4th item
                        const Positioned(
                          right: 5,
                          top: 5,
                          child: Icon(
                            Icons.video_collection,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
