
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Question_3 extends StatefulWidget {
  const Question_3({super.key});

  @override
  Question_3State createState() => Question_3State();
}

class Question_3State extends State<Question_3> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
        title: const Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.red),
            onPressed: () {
              // Add your favorite logic here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added to favorites!')),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://www.tradethemark.com/cdn/shop/products/TradeTheMark_Ceramic_Lg_Vessel_Bluehaze_blue_2_1024x1024.jpg?v=1571460117',
                      width: 350,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Title, Rating stars, and Reviews
              Row(
                children: [
                  const Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    initialRating: 4.8,
                    minRating: 1,
                    itemSize: 20,
                    itemCount: 1,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '4.8 (268 Reviews)',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Description with Read More/Show Less toggle
              RichText(
                text: TextSpan(
                  text:
                      'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America...',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: _isExpanded ? ' Show Less' : ' Read More',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                    ),
                  ],
                ),
              ),
              if (_isExpanded)
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'The genus includes annuals and perennials, often used in gardens for their vibrant colors and attractive flowers.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              const SizedBox(height: 20),

              // Plant details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailColumn('Size', 'Medium'),
                  _buildDetailColumn('Plant', 'Orchid'),
                  _buildDetailColumn('Height', '12.6"'),
                  _buildDetailColumn('Humidity', '82%'),
                ],
              ),
              const SizedBox(height: 20),

              // Price and Add to Cart button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '\$39.99',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Row(
                      children: [
                        
                        SizedBox(width: 5),
                        Text(
                          'Add to Cart',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailColumn(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
