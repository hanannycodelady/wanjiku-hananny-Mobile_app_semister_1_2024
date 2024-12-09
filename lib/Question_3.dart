import 'package:flutter/material.dart';


class Question_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.red),
            onPressed: () {
              // Handle heart icon press
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image in the center
          Container(
            padding: EdgeInsets.all(16),
            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRuCIN_9Dv1Jiqlx9RhQ0Hwzn1fAx_FV_Ogg&s'),
          ),
          // Text and Reviews
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Ageratum ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.green),
                    Text("4.8(268 Reviews)", style: TextStyle(fontSize: 16)),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // Handle read more
                      },
                      child: Text("Read More"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Plant Details Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Size: Medium", style: TextStyle(fontSize: 16)),
                Text("Plant Height: 1.5m", style: TextStyle(fontSize: 16)),
                Text("Humidity: 60%", style: TextStyle(fontSize: 16)),
                Text("Price: \$39.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          // Add to Cart Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle Add to Cart
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: Text("Add to Cart", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
