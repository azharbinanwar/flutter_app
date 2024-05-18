import 'package:flutter/material.dart';
import 'package:flutter_app/animation/animation_1.dart';
import 'package:flutter_app/animation/animation_2.dart';
import 'package:flutter_app/animation/animation_3.dart';

class SimpleAnimationPage extends StatefulWidget {
  SimpleAnimationPage({super.key});

  @override
  State<SimpleAnimationPage> createState() => _SimpleAnimationPageState();
}

class _SimpleAnimationPageState extends State<SimpleAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter App')),
      body: Stack(
        children: [
          // const Positioned(
          //   bottom: 16.0,
          //   right: 16.0,
          //   child: Animation4(),
          // ),
          const Animation2(),
          const Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 16,
            child: Animation1(),
          ),
          const Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Animation3(),
          ),

          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Text(
          //     'Simple animations',
          //     textAlign: TextAlign.center,
          //     style: Theme.of(context).textTheme.headlineLarge,
          //   ),
          // ),
        ],
      ),
    );
  }
}
