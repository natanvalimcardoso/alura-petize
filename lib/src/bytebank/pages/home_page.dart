// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/components/card_item_transferencia.dart';
import 'package:petize_alura/src/bytebank/model/transferencia.dart';
import 'package:petize_alura/src/bytebank/pages/formulario_transferencia.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transferencia> _transferencias = [];

  @override
  Widget build(BuildContext context) {
//   _transferencias.add(Transferencia(valor: 100, numeroConta: 12222)); //Testar se está adicionando
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferência'),
      ),
      body: ListView.builder(
          itemCount: _transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = _transferencias[indice];
            return ItemTransferencia(transferencia);
          }),
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
              _transferencias.add(transferenciaRecebida!);
            },
          );
        },
      ),
    );
  }
}
