import 'package:flutter/material.dart';

class Horizontalcard extends StatelessWidget {
  final String text;
  final String subtitle;
  final String image;
  final String? linkUrl;

  const Horizontalcard({
    super.key,
    required this.text,
    required this.subtitle,
    required this.image,
    this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (linkUrl != null) {
          Navigator.pushNamed(context, linkUrl!);
        }
      },
      child: Card(
        elevation: 8,
        margin: const EdgeInsets.only(bottom: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon and text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),

                // Image (network or asset)
                if (Uri.tryParse(image)?.hasAbsolutePath == true)
                  Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: 75,
                    height: 75,
                  )
                else
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: 75,
                    height: 75,
                  ),
              ],
            )),
      ),
    );
  }
}
