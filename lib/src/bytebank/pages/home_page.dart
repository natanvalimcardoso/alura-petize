// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/pages/formulario_transferencia.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferência'),
      ),
      body: Column(
        children: [
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/formularioTransferencias');
        },
      ),
    );
  }
}
