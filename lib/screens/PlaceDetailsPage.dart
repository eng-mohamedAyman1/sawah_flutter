import 'package:flutter/material.dart';

import '../models/Places.dart';

class PlaceDetailsPage extends StatelessWidget {
  final Place place;

  PlaceDetailsPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network(place.imageUrl),
            SizedBox(height: 16),
            Text(
              place.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(place.description),
          ],
        ),
      ),
    );
  }
}