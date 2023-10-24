import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          const SizedBox(
             height: 20,
          ),
          ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed('/palavra-chave'),
              child: const Text('Palavra-Chave'))
        ],
      ),
    );
  }
}
