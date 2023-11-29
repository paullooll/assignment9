import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/b.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Popular Webtoons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    WebtoonItem("Academy's Genious Swordsman", 'Reborn', 'assets/images/Academys Genius Swordmaster.jpg'),
                    WebtoonItem('The Live', 'Fantasy', 'assets/images/The Live.jpg'),
                    WebtoonItem('The Beginning After The End', 'Adventure', 'assets/images/The Beginning After The End.jpg'),
                    WebtoonItem("The Hero Returns", 'Adventure', 'assets/images/The Hero Returns.jpg'),
                    WebtoonItem('Summer Taste', 'Sports', 'assets/images/Summer Taste.jpg'),
                    WebtoonItem('Solo Max-Level Newbie', 'Action', 'assets/images/Solo Max-Level Newbie.jpg'),
                    WebtoonItem("Return of the Bloodthirsty Police", 'Revenge', 'assets/images/Return of the Bloodthirsty Police.jpg'),
                    WebtoonItem('Relife Player', 'Reborn', 'assets/images/Relife Player.jpg'),
                    WebtoonItem('Pick Me Up, Infinite Gacha', 'Fantasy', 'assets/images/Pick Me Up, Infinite Gacha.jpg'),
                    WebtoonItem('Devil Returns To School Days', 'Revenge', 'assets/images/Devil Returns To School Days.jpg'),
                    WebtoonItem('Genius of the Unique Lineage', 'Action', 'assets/images/Genius of the Unique Lineage.jpg'),
                    WebtoonItem("I Killed an Academy Player", 'Reborn', 'assets/images/I Killed an Academy Player.jpg'),
                    WebtoonItem('Killer Pietro', 'Revenge', 'assets/images/Killer Pietro.jpg'),
                    WebtoonItem("Academy's Undercover Professor", 'Fantasy', 'assets/images/Academys Undercover Professor.jpg'),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class WebtoonItem extends StatelessWidget {
  final String title;
  final String genre;
  final String imageUrl;

  WebtoonItem(this.title, this.genre, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: SizedBox( 
        height: 1000,
        width: 150, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              imageUrl,
              height: 200,
              width: 150, 
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Text('$genre',style: TextStyle(fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

