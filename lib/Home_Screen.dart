import 'package:flutter/material.dart'; // Proper import

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Home Screen')),
      body:const Center(
        child: Text(
          'Full Name: Wanjiku Hananny\nRegistration Number: Reg no /DCSE/00107/ss',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
