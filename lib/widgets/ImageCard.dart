import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String fact;
  final AssetImage image;
  final toScreen;

  const ImageCard(this.fact, this.image, this.toScreen);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => toScreen),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: image,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 40,
                  right: 16,
                  left: 16,
                  child: Text(
                    fact,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
