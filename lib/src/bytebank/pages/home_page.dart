// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/model/transferencia.dart';
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
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormularioTransferencias(),
            ),
          );
          future.then( 
            (transferenciaRecebida) {
              debugPrint('$transferenciaRecebida');
            },
          );
        },
      ),
    );
  }
}
