// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class artisters extends StatelessWidget {
  const artisters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: constraints.maxWidth ~/ 250,
            crossAxisSpacing: 8, // Adjust the spacing between items
            mainAxisSpacing: 8, // Adjust the spacing between rows
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: ImageItem(image: images[index], title: titles[index]),
            );
          },
        );
      }),
    );
  }
}

class ImageItem extends StatefulWidget {
  final String image;
  final String title;

  const ImageItem({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  State<ImageItem> createState() => _ImageItemState();
}

class _ImageItemState extends State<ImageItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: SizedBox(
        width: 150, // Adjust the width of the box
        height: 250, // Adjust the height of the box
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Sample data
List<String> images = [
  'assets/images/Duke Pendragon.jpg',
  'assets/images/Helmut_ The Forsaken Child.jpg',
  'assets/images/Hoarding in Hell.jpg',
  'assets/images/Omniscient Readers Viewpoint.jpg',
  'assets/images/Regressing with the Kings Power.jpg',
  'assets/images/Reformation of the Deadbeat Noble.jpg',
  'assets/images/Return of the 8th Class Magician.jpg',
  'assets/images/Solo Leveling.jpg',
  'assets/images/Secret Class.jpg',
  'assets/images/Star-Embracing Swordmaster.jpg',
  'assets/images/The Knight King Who Returned with a God.jpg',
  'assets/images/The Genius Assassin Who Takes it All.jpg',
  'assets/images/The Max-Level Players 100th Regression.jpg'
];

List<String> titles = [
  'Duke Pendragon',
  'Helmut The Forsaken Child',
  'Hoarding in Hell',
  'Omniscient Readers Viewpoint',
  'Regressing with the Kings Power',
  'Reformation of the Deadbeat Noble',
  'Return of the 8th Class Magician',
  'Solo Leveling',
  'Secret Class',
  'Star-Embracing Swordmaster',
  'The Knight King Who Returned with a God',
  'The Genius Assassin Who Takes it All',
  'The Max-Level Players 100th Regression'
];
