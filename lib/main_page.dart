import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Aplikasi pertamaku'),
      backgroundColor: Color.fromARGB(0, 103, 103, 196),
      ),
      body: Row(
        children: [
          Container(
            color: Color.fromARGB(0, 103, 103, 196),
          ),
        ],
      )
    );
  }
}