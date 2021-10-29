import 'package:flutter/material.dart';

class PhysicalModelExample extends StatelessWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: PhysicalModel(
          color: Colors.blue,
          elevation: 20.0,
          shadowColor: Colors.red,
          child: SizedBox(
            height: 400,
            width: 400,
            child: Center(
              child: Text(
                'PhysicalModel',
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
