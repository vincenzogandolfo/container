import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Container'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  // Proprietà che Colora il Container
                  color: Colors.greenAccent,
                  // Proprietà che Gestisce il Contorno (Colore e Spessore)
                  border: Border.all(color: Colors.black, width: 5),
                  // Proprietà che Curva gli Angoli
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(child: Text('Verde')),
              ),
              const SizedBox(height: 30),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  border: Border.all(color: Colors.black, width: 5),
                  // Proprietà che dà una Forma al Container
                  shape: BoxShape.circle,
                ),
                child: const Center(child: Text('Rosso')),
              ),
              const SizedBox(height: 30),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.black, width: 5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      // Proprietà che indica la Densità della Sfumatura
                      blurRadius: 40,
                      // Proprietà che indica l' Ampiezza della Sfumatura
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: const Center(child: Text('Blu')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
