import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Abghi,',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want to cook today?',
                          style: TextStyle(
                            fontSize: 16,
                             fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 129, 129, 129),
                          ),
                        ),
                      ],
                    ),
                    AvatarFrame(
                      imageUrl: 'https://cdn.suruga-ya.com/database/pics_light/game/860031528.jpg',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color.fromARGB(255, 80, 4, 4).withOpacity(0.5),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 197, 189, 189).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recipe Recommendation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: AvatarFrame(
                              imageUrl: 'https://pbs.twimg.com/media/ElL8ph0U0AAXq5W.jpg',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 0),
                      Text(
                        'Get Your Personalized Recipe ',
                        style: TextStyle(
                          fontSize: 16,
                          
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      Text(
                        'Recommendation in 4 steps',
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              print('Get Recipe button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              primary: Color.fromARGB(255, 255, 193, 60),
                            ),
                            child: Text('Get Recipe'),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              print('Skip button pressed');
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                            ),
                            child: Text('Skip'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Recipe',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('See All Popular Recipe pressed');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecipeCard(
                        imageUrl: 'https://cdn1-production-images-kly.akamaized.net/uBuE5OD3B9pUTVNJd81cB819z7Y=/0x194:5616x3359/800x450/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3048436/original/030475400_1581499756-shutterstock_413580649.jpg',
                        dishName: 'Spaghetti Bolognese',
                        label1: 'Pasta',
                        label2: '',
                        time: '30-45 Minutes',
                        difficulty: 'Medium',
                        chefName: 'Maria',
                      ),
                      SizedBox(width: 20),
                      RecipeCard(
                        imageUrl: 'https://img.taste.com.au/d4JNfJUH/taste/2019/07/classic-beef-stew-151457-2.jpg',
                        dishName: 'Classic Beef Stew',
                        label1: 'Meat',
                        label2: '',
                        time: '45-60 Minutes',
                        difficulty: 'Easy',
                        chefName: 'Niki',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Actor',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('See All Popular Actor pressed');
                      },
                      child: Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 219, 140, 20), 
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      AvatarRecipeCard(
                        imageUrl: 'https://media.tenor.com/wmEx6bp6SocAAAAe/neuvillette-genshin-impact.png',
                        chefName: 'Noval',
                        time: '124',
                        difficulty: '41391',
                        dishName: 'Neuvilette',
                      ),
                      SizedBox(width: 10),
                      AvatarRecipeCard(
                        imageUrl: 'https://s3.eu-central-1.wasabisys.com/open3dlab-thumbs/item_thumb_next/138519/Navia_thumbnail.detail.webp',
                        chefName: 'Navia',
                        time: '98',
                        difficulty: '7323',
                        dishName: 'Navia',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 219, 140, 20),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
  icon: Padding(
    padding: EdgeInsets.only(top: 8.0), 
    child: Container(
      width: 50,
      height: 18,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(189, 169, 130,0), 
            blurRadius: 30,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Icon(Icons.home, color: Colors.black),
    ),
  ),
  label: 'Home',
),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Item 3',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String imageUrl;
  final String dishName;
  final String time;
  final String difficulty;
  final String chefName;
  final String label1;
  final String label2;

  RecipeCard({
    required this.imageUrl,
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.chefName,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromARGB(255, 80, 4, 4).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              imageUrl,
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label1,
              style: TextStyle(
                fontSize: 12,
                 fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 146, 41, 41),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                     fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  chefName,
                  style: TextStyle(
                    fontSize: 12,
                     fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class AvatarRecipeCard extends StatelessWidget {
  final String dishName;
  final String time; 
  final String difficulty; 
  final String imageUrl; 
final String chefName;
  AvatarRecipeCard({
    required this.dishName,
    required this.time,
    required this.difficulty,
    required this.imageUrl,
    required this.chefName
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromARGB(255, 80, 4, 4).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: const Color.fromARGB(255, 218, 218, 218), 
            ),
            child: Center(
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl, 
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dishName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book, 
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 6),
                Text(
                  time, 
                  style: TextStyle(
                    fontSize: 12,
                     fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.favorite, 
                  size: 14,
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,

                    color:  const Color.fromARGB(255, 129, 129, 129),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarFrame extends StatelessWidget {
  final String imageUrl;

  AvatarFrame({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}