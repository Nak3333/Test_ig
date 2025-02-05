import 'package:flutter/material.dart';

class ProfileMe extends StatefulWidget {
  const ProfileMe({Key? key}) : super(key: key);

  @override
  State<ProfileMe> createState() => _ProfileMeState();
}

class _ProfileMeState extends State<ProfileMe> {
  // List of product images (replace with actual image URLs or asset paths)
  final List<String> productImages = [
    'https://cambodiatravel.com/images/2020/10/Beef-Lok-Lak-cambodia.jpg',
    'https://cambodiatravel.com/images/2020/10/Beef-Lok-Lak-cambodia.jpg',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  // List of person/profile images
  final List<String> personImages = [
    'https://cambodiatravel.com/images/2020/10/Beef-Lok-Lak-cambodia.jpg',
    'https://cambodiatravel.com/images/2020/10/Beef-Lok-Lak-cambodia.jpg',
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
          title: Row(
            children: [
              Icon(Icons.lock, size: 16),
              SizedBox(width: 4),
              Text(
                "Nak",
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.keyboard_arrow_down, size: 16),
            ],
          ),
          actions: [
            Icon(Icons.circle, color: Colors.red, size: 12),
            SizedBox(width: 16),
            Icon(Icons.add),
            SizedBox(width: 16),
            Icon(Icons.menu),
            SizedBox(width: 10),
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
                                  color: Colors.yellow,
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
                                    '10',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Text(
                                    '30',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Text(
                                    '50',
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
                              'Nak',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'I Love Cambodia',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: const Text('Edit Your Profile'),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: const Text('Share Profile'),
                            ),
                          ],
                        ),
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
