import 'package:flutter/material.dart';
import 'package:template_project/screen/pesan.dart';
import 'package:template_project/screen/profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Welcome to the Anime World',
            style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome to Anime Paradise',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Image.asset('images/utama.png', width: double.infinity),
              SizedBox(height: 10),
              Text('Embrace Your Otaku Journey',
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text(
                  'Your adventure into the world of anime begins here. Let’s explore and enjoy together!',
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: TextStyle(fontSize: 24)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimeListScreen()),
                      );
                    },
                    child: Text('See All Anime'),
                  ),
                ],
              ),
              Wrap(
                spacing: 10,
                children: [
                  CategoryButton('Naruto'),
                  CategoryButton('One Piece'),
                  CategoryButton('Attack on Titan'),
                  CategoryButton('My Hero Academia'),
                  CategoryButton('Demon Slayer'),
                  CategoryButton('Jujutsu Kaisen'),
                ],
              ),
              SizedBox(height: 40),
              Text('Top Anime Courses', style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CourseCard('Naruto', 'images/naruto.jpg'),
                  CourseCard('One Piece', 'images/onepiece.jpg'),
                  CourseCard('Attack on Titan', 'images/attack_on_titan.jpg'),
                  CourseCard('My Hero Academia', '/images/bokunohero.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MassageScreen()),
                  );
                },
              ),
              IconButton(icon: Icon(Icons.book), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  }),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget CategoryButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF0F0F0),
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget CourseCard(String title, String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath,
              width: 220, height: 120, fit: BoxFit.cover),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}

class AnimeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Anime World', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anime Recommendations',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  AnimeCard('Naruto', 'images/naruto.jpg'),
                  AnimeCard('One Piece', 'images/onepiece.jpg'),
                  AnimeCard('Attack on Titan', 'images/attack.jpg'),
                  AnimeCard('My Hero Academia', 'images/bokunohero.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget AnimeCard(String title, String imagePath) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imagePath,
                width: 220, height: 120, fit: BoxFit.cover),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
