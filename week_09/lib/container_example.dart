import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'container_provider.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ContainerProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Selector<ContainerProvider, double>(
              selector: (_, selectorValue) => selectorValue.sliderValue,
              builder:
                  (context, value, child) => AnimatedContainer(
                    duration: Duration(seconds: 5),
                    curve: Curves.easeInCirc,
                    child: Container(
                      width: 200 * value,
                      height: 200 * value,
                      decoration: BoxDecoration(
                        color: Colors.amber.withValues(alpha: value),
                      ),
                    ),
                  ),
            ),

            Selector<ContainerProvider, double>(
              selector: (_, selectorValue) => selectorValue.sliderValue,

              builder:
                  (context, value, child) => Slider(
                    value: value,
                    onChanged: (value) {
                      provider.changeInSlider(value);
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
