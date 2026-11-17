import 'package:flutter/material.dart';

import 'demo_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Home')),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.school, size: 72, color: Colors.green),
            const SizedBox(height: 20),
            Text(
              'Welcome, ${DemoAuth.currentUsername ?? "Student"}!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            const Text(
              'Use the tabs below to calculate, view your profile, or share a post.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
