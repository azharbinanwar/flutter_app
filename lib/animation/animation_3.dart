import 'package:flutter/material.dart';

class Animation3 extends StatefulWidget {
  const Animation3({super.key});

  @override
  State<Animation3> createState() => _Animation3State();
}

class _Animation3State extends State<Animation3> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (c, ani) => FadeTransition(opacity: ani, child: c),
          child: !_isExpanded
              ? const SizedBox.shrink()
              : Column(
                  children: [
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add_to_drive)),
                    const SizedBox(height: 12.0),
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.photo_library_outlined)),
                    const SizedBox(height: 12.0),
                    FloatingActionButton(onPressed: () {}, child: const Icon(Icons.camera_alt_outlined)),
                    const SizedBox(height: 12.0),
                  ],
                ),
        ),
        FloatingActionButton(
          onPressed: () => setState(() => _isExpanded = !_isExpanded),
          child: Icon(_isExpanded ? Icons.close : Icons.add),
        )
      ],
    );
  }
}
