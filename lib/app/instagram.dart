import 'package:flutter/material.dart';
import 'package:instagram/app/Video_Screen.dart';
import 'ProfileMe.dart';
import 'ProfileScreen_2.dart';
import 'ProfileScreen_3.dart';
import 'Search.dart';




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
      appBar: AppBar(
        actions: [
          const Icon(Icons.favorite_border),
          const SizedBox(width: 8),
          const Icon(Icons.send_outlined),
          const SizedBox(width: 8),
        ],
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: "Billabong",
          ),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        _buildHomeScreen(),
        const Search(),
        const Search(),
        //const VideoScreen(),
        //const VideoScreen(),
        const ProfileMe(),
      ],
    );
  }

  Widget _buildHomeScreen() {
    return ListView(
      children: [
        _buildStoriesSection(),
        const Divider(),
        _profilePost(),
        _profilePostTwo(),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ""),
      ],
    );
  }

  Widget _buildStoriesSection() {
    final List<String> storyImages = [
      'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/cea23f41-0471-4e17-828f-9a60fb89bf7f/anim=false,width=450/01a7a-3249415690.jpeg',
      'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
      'https://imgcdn.stablediffusionweb.com/2024/9/27/46e91118-0af8-4735-8859-117ffcbee3bd.jpg',
      'https://sketchok.com/images/articles/06-anime/002-one-piece/26/16.jpg',
      'https://sketchok.com/images/articles/06-anime/002-one-piece/26/16.jpg',
      'https://sketchok.com/images/articles/06-anime/002-one-piece/26/16.jpg',
    ];

    final List<String> storyNames = [
      'Add Story',
      'JuJu',
      'Zoro Roronoa',
      'Nami',
      'Sanji',
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
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _profilePost() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPost(
          profileImage: 'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
          username: 'JuJu',
          postImage: 'https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg',
          caption: "Hello, i am from korea ❤",
          likes: '999 Likes',
          comments: 'View all 520 comments',
        ),
      ],
    );
  }
  Widget _profilePostTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPostTwo(
          profileImage: 'https://imgcdn.zigwheels.my/medium/gallery/exterior/5/1614/ferrari-f8-tributo-21467.jpg',
          username: 'Daily.carstyle',
          postImage: 'https://www.electriccars.ph/app/web/upload/medium/bz3-1-1955.jpg',
          caption: "The best Car ️2025 🚙",
          likes: '1830 Likes',
          comments: 'View all 120 comments',
        ),
      ],
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
              IconButton(icon: const Icon(Icons.chat_bubble_outline), onPressed: () {}),
              IconButton(icon: const Icon(Icons.send), onPressed: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
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

  Widget _buildPostTwo({
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
              IconButton(icon: const Icon(Icons.chat_bubble_outline), onPressed: () {}),
              IconButton(icon: const Icon(Icons.send), onPressed: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(likes, style: const TextStyle(fontWeight: FontWeight.bold)),
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
