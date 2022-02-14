// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/model/transferencia.dart';

import '../components/text_field_component.dart';

class FormularioTransferencias extends StatelessWidget {
  FormularioTransferencias({Key? key}) : super(key: key);

  final TextEditingController _controladorCampoNumeroConta =TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Column(
        children: [
          TextFieldComponent(
            controlador: _controladorCampoNumeroConta,
            dica: '0000',
            rotulo: 'Numero da conta',
          ),
          TextFieldComponent(
            controlador: _controladorCampoValor,
            dica: '0.00',
            rotulo: 'Valor',
            icone: Icons.monetization_on,
          ),
          //* Botão de transferência
          ElevatedButton(
            onPressed: () {
              _criaTransferencia(context);
            },
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta =
        int.parse(_controladorCampoNumeroConta.text);
    final double valor = double.parse(_controladorCampoValor.text);
    
    if (numeroConta != null && valor != null) {
      final transferencia =Transferencia(valor: valor, numeroConta: numeroConta);
      debugPrint('$transferencia');
      Navigator.pop(context, transferencia);
    }
  }
}
