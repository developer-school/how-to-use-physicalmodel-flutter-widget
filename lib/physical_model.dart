import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PhysicalModelExample extends HookWidget {
  const PhysicalModelExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shadowColor = useState<Color>(Colors.blue);
    final color = useState<Color>(Colors.red);
    final elevation = useState<double>(0);

    final width = useState<double>(MediaQuery.of(context).size.width * 0.8);
    final height = useState(MediaQuery.of(context).size.height * 0.8);

    final onClick = useCallback(() {
      shadowColor.value = shadowColor.value == Colors.red ? Colors.blue : Colors.red;
      color.value = color.value == Colors.red ? Colors.blue : Colors.red;
      elevation.value = elevation.value == 0 ? 20 : 0;
    }, [shadowColor, color, elevation]);

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Tap me!'),
        onPressed: onClick,
        isExtended: true,
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          color: color.value,
          animateColor: true,
          animateShadowColor: true,
          elevation: elevation.value,
          shadowColor: shadowColor.value,
          shape: BoxShape.rectangle,
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
            width: width.value,
            height: height.value,
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
