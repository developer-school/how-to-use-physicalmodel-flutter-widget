import 'package:flutter/material.dart';

class PhysicalModelExample extends StatelessWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PhysicalModel(
          color: Colors.blue.withOpacity(0),
          elevation: 20.0,
          shadowColor: Colors.red,
          child: Opacity(
            opacity: 0,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
                maxHeight: 400,
              ),
              child: const Center(
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
      ),
    );
  }
}
