import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({super.key});

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  bool _isExpanded1 = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            onPressed: () => setState(() => _isExpanded1 = !_isExpanded1),
            child: AnimatedRotation(
                turns: _isExpanded1 ? 0.5 : 0.0, duration: const Duration(milliseconds: 200), child: const Icon(Icons.keyboard_arrow_left)),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.elasticOut,
          right: _isExpanded1 ? 16 : -64,
          top: 56 + 16 * 2,
          duration: const Duration(milliseconds: 1000),
          child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.camera_alt_outlined)),
        ),
        AnimatedPositioned(
          curve: Curves.elasticOut,
          right: _isExpanded1 ? 16 : -64,
          top: 56 * 2 + 16 * 3,
          duration: const Duration(milliseconds: 800),
          child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.photo_library_outlined)),
        ),
        AnimatedPositioned(
          curve: Curves.elasticOut,
          right: _isExpanded1 ? 16 : -64,
          top: 56 * 3 + 16 * 4,
          duration: const Duration(milliseconds: 600),
          child: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add_to_drive)),
        ),
      ],
    );
  }
}
