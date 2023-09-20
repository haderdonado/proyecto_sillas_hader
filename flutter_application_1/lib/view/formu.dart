import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/me_pagos.dart';


void main() {
  runApp(const Formu());
}

class Formu extends StatelessWidget {
  const Formu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario de compra'),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/login.png', // Ruta de la imagen en assets
              width: 100.0, // Ajusta el ancho según tus necesidades
              height: 100.0, // Ajusta la altura según tus necesidades
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Sillas que desea comprar',
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Color de las sillas',
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormularioMasterCard()),
                    );
                    // Lógica para manejar el envío aquí
                  },
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
