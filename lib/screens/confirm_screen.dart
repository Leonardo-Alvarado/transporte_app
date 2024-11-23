import 'package:flutter/material.dart';

class ConfirmScreen extends StatelessWidget {
  final String destino;

  const ConfirmScreen({super.key, required this.destino});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirmar Viaje')),
      body: Center(
        child: Text('Tu destino es: $destino'),
      ),
    );
  }
}
