import 'package:bloc_example2/bloc/bloc_event.dart';
import 'package:bloc_example2/bloc/bloc_logic.dart';
import 'package:bloc_example2/bloc/bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final blocReader = context.read<Bloclogic>();

    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<Bloclogic, CounterState>(
              buildWhen: (previous, current) => current.counterValu > 20,
              listenWhen: (previous, current) => current.counterValu == 20,
              builder: (context, state) {
                return Text(
                  state.counterValu.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Current Value is 20')),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => blocReader.add(Increament()),
                  child: const Text('+'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => blocReader.add(Decreament()),
                  child: const Text('-'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
