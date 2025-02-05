import 'package:flutter/material.dart';

class Profilescreen_2 extends StatefulWidget {
  const Profilescreen_2({Key? key}) : super(key: key);

  @override
  State<Profilescreen_2> createState() => _Profilescreen_2();
}

class _Profilescreen_2 extends State<Profilescreen_2> {
  final List<String> productImages = [
    'https://i.pinimg.com/550x/4e/61/e2/4e61e271c7ba5d97b5180d4ef4fc7e9b.jpg',
    'https://i.pinimg.com/564x/21/f0/5e/21f05e85c6b66731d15e00f6a24477d7.jpg',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  final List<String> personImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQftFN81YPLk8lb0T7T86JSqf7Vp5uBvUeS3g&s',
    'https://i.pinimg.com/236x/18/c5/df/18c5df9541f329a4a9db307ccb04bc7e.jpg',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
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
                "JuJu",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
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
                                  child: Image.network('https://i.pinimg.com/736x/b0/28/09/b028096d34128a39b8f90ef834307f0e.jpg'),
                                  //the same
                                  //child: Image.asset("image/funny pic2.jpg",fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 55),
                                  Text(
                                    '100',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Text(
                                    '30k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Text(
                                    '50k',
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
                                  SizedBox(width: 40),
                                  Text(
                                    'Followers',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(width: 25),
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
                              'JuJu',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'I am from Korea',
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
