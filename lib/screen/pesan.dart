import 'package:flutter/material.dart';
import 'package:template_project/screen/utamapage.dart';
import 'profile.dart';

class MassageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Anime Massage', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimeListItem('Naruto', 'images/naruto.jpg'),
              SizedBox(height: 20),
              AnimeListItem('One Piece', 'images/onepiece.jpg'),
              SizedBox(height: 20),
              AnimeListItem('Attack on Titan', 'images/attack.jpg'),
              SizedBox(height: 20),
              AnimeListItem('My Hero Academia', 'images/bokunohero.jpg'),
              SizedBox(height: 20),
              AnimeListItem('Demon Slayer', 'images/kimetsu.jpg'),
              SizedBox(height: 20),
              AnimeListItem('Jujutsu Kaisen', 'images/jjk.jpg'),
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
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }),
              IconButton(icon: Icon(Icons.message), onPressed: () {}),
              IconButton(icon: Icon(Icons.book), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget AnimeListItem(String title, String imagePath) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('Description for $title',
                  style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
