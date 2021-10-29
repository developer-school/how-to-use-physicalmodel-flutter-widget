import 'package:flutter/material.dart';

class PhysicalModelExample extends StatefulWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  State<PhysicalModelExample> createState() => _PhysicalModelExampleState();
}

class _PhysicalModelExampleState extends State<PhysicalModelExample> {
  Color shadowColor = Colors.blue;
  Color color = Colors.red;
  double elevation = 0;

  void onClick() {
    setState(() {
      shadowColor = shadowColor == Colors.red ? Colors.blue : Colors.red;
      color = color == Colors.red ? Colors.blue : Colors.red;
      elevation = elevation == 0 ? 20 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Tap me!'),
        onPressed: onClick,
        isExtended: true,
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          color: color,
          animateColor: true,
          animateShadowColor: true,
          elevation: elevation,
          shadowColor: shadowColor,
          shape: BoxShape.rectangle,
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: const Center(
              child: Text(
                'AnimatedPhysicalModel',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
