import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TrocaImagens(),
    );
  }
}

class TrocaImagens extends StatefulWidget {
  const TrocaImagens({Key? key}) : super(key: key);

  @override
  _TrocaImagens createState() => _TrocaImagens();
}

class _TrocaImagens extends State<TrocaImagens> {
  bool _primeiraImagem = true;

  void _trocaImagem() {
    setState(() {
      _primeiraImagem = !_primeiraImagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[800],
        foregroundColor: Colors.white,
        title: const Text('Segundo App em Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _primeiraImagem
                  ? Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/man.jpg',
                  fit: BoxFit.cover,
                ),
              )
                  : Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/street.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _trocaImagem,
        backgroundColor: Colors.white,
        shape: const CircleBorder(),
        child: const Icon(Icons.update, color: Colors.orange,),
      ),
      bottomSheet: Container(
        height: 50,
        color: Colors.orange[800],
      ),
    );
  }
}
