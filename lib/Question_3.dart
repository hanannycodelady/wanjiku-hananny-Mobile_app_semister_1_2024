import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Question_3 extends StatefulWidget {
  const Question_3({super.key});

  @override
  _Question_3State createState() => _Question_3State();
}

class _Question_3State extends State<Question_3> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Details'),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top
              Center(
                child: Image.network(
                  'https://www.tradethemark.com/cdn/shop/products/TradeTheMark_Ceramic_Lg_Vessel_Bluehaze_blue_2_1024x1024.jpg?v=1571460117',
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

              // Title, Rating stars, and Reviews
              Row(
                children: [
                  const Text(
                    'Ageratum',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  RatingBar.builder(
                    initialRating: 4.8,
                    minRating: 1,
                    itemSize: 20,
                    itemCount: 5,
                    allowHalfRating: true,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {
                      // Optional: Handle rating updates
                    },
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '4.8 (268 Reviews)',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
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
                    onPressed: () {
                      // Add to Cart functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    child: const Text('Add to Cart'),
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
