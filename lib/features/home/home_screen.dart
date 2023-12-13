import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Assets.images.test.path,
                        ),
                        fit: BoxFit.cover)),
                height: 500,
              )),
          SizedBox(
            height: 30,
          ),
          Text("My Project")
        ],
      ),
    );
  }
}
