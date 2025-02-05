import 'package:flutter/material.dart';

class Profilescreen_3 extends StatefulWidget {
  const Profilescreen_3({Key? key}) : super(key: key);

  @override
  State<Profilescreen_3> createState() => _Profilescreen_3();
}

class _Profilescreen_3 extends State<Profilescreen_3> {
  final List<String> productImages = [
    'https://www.electriccars.ph/app/web/upload/medium/bz3-1-1955.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMx9YNjafzhV3Ago_zjFkmKcd4e7P8s43ye3RkBsQXwgCw7HOWVFGYcSPw4gyCgW2oqC0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLIwGvAhVFw58Gpy-dZkRp22RbtSAJ8x3IQ1RuY4qrR9XpQDO5U89rs2OVcAUTUi0gqoQ&usqp=CAU',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];

  final List<String> personImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPwGQEZ10Kl5DK4wvsgXDuFFaoL0Ky82j-BQ&s',
    'https://www.cartoq.com/wp-content/uploads/2012/05/Lamborghini-Aventador-Wallpaper.jpg',
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
                "Daily.carstyle",
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
                                  child: Image.network('https://imgcdn.zigwheels.my/medium/gallery/exterior/5/1614/ferrari-f8-tributo-21467.jpg'),
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
                                    '300k',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 55),
                                  Text(
                                    '500k',
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
                              'Daily.carstyle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Cars\nWelcome on our page 🚌\n✔ DM for Collab/Cheap Promo',
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
