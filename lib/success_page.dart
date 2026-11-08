import 'package:flutter/material.dart';
import 'home_screen.dart';

class SuccessPage extends StatelessWidget {
  final String login;

  const SuccessPage({super.key, required this.login});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asosiy sahifa'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 40,
          color: Colors.blueAccent,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, size: 100, color: Colors.white),
              const SizedBox(height: 16),
              const Text(
                'Tizimga muvaffaqiyatli kirdingiz!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Xush kelibsiz, $login',
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Chiqish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
