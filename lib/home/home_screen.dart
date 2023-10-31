import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Card(
                child: Container(
                  height: 200,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
