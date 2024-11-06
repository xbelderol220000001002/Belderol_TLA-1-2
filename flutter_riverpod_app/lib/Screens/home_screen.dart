// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/counter.dart'; // Import the provider

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter =
        ref.watch(counterProvider); // Get the Counter from the provider

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Riverpod Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter Value:', style: TextStyle(fontSize: 24)),
            // Using headlineMedium instead of headline4
            Text('${counter.count}',
                style: Theme.of(context).textTheme.headlineMedium),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Increment button
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    ref
                        .read(counterProvider.notifier)
                        .increment(); // Increment counter
                  },
                ),
                // Decrement button
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    ref
                        .read(counterProvider.notifier)
                        .decrement(); // Decrement counter
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
