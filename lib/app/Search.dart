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
    'https://www.cartoq.com/wp-content/uploads/2012/05/Lamborghini-Aventador-Wallpaper.jpg',
    'https://www.cartoq.com/wp-content/uploads/2012/05/Lamborghini-Aventador-Wallpaper.jpg',
    'https://www.shutterstock.com/image-photo/beautiful-young-asian-woman-pointing-600nw-2341582245.jpg',
    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7b0e01ca-065b-46fe-8d59-4b0a6049b208/dg9du9s-25241c47-a748-45ec-ac3c-52b1d5aedf2a.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzdiMGUwMWNhLTA2NWItNDZmZS04ZDU5LTRiMGE2MDQ5YjIwOFwvZGc5ZHU5cy0yNTI0MWM0Ny1hNzQ4LTQ1ZWMtYWMzYy01MmIxZDVhZWRmMmEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.2pueWXZDoBjJJiM1BP1wcuFEwTOsT0gsm4SnAfrKj6I',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_5ypWM_BYPwArdEagKShnnVIFjQmIA7E7hw&s',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
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
                          hintText: 'Search User',
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
