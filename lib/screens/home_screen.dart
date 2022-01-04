import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // propiedad

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 32);
    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          // print('Hola mundo $counter');
        },
      ),
    );
  }
}
