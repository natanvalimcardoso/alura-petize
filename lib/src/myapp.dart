import 'package:flutter/material.dart';
import 'package:petize_alura/src/bytebank/pages/formulario_transferencia.dart';
import 'package:petize_alura/src/bytebank/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => HomePage(),
      '/formularioTransferencias': (context) => FormularioTransferencias(),
    });
  }
}
