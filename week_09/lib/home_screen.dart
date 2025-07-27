import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<HomeProvider>(); // read only once

    print("🔁 MyHomePage rebuilt");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),

            // 👇 Using Selector to only rebuild when `ziker` changes
            Selector<HomeProvider, int>(
              selector: (_, provider) => provider.ziker,
              builder: (_, zikerValue, __) {
                print("🔁 Selector (Ziker) rebuilt");
                return Text(
                  'Ziker: $zikerValue',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),

            // 👇 Button to increment ziker count
            TextButton(
              onPressed: provider.incrementZiker,
              child: const Text("Ziker Button", style: TextStyle(fontSize: 24)),
            ),

            // 👇 Consumer to rebuild only this widget when `counter` changes
            Consumer<HomeProvider>(
              builder: (_, value, __) {
                print("🔁 Consumer (Counter) rebuilt");
                return Text(
                  'Counter: ${value.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),

            // 👇 Consumer to rebuild only when `themeIsDark` changes
            Consumer<HomeProvider>(
              builder: (_, value, __) {
                print("🔁 Consumer (Switch) rebuilt");
                return Switch(
                  value: value.themeIsDark,
                  onChanged: (_) => provider.toggleTheme(),
                );
              },
            ),
          ],
        ),
      ),

      // 👇 FAB increments counter
      floatingActionButton: FloatingActionButton(
        onPressed: provider.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
