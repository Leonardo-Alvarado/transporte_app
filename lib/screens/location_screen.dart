import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seleccionar Ubicación')),
      body: Center(
        child: Text('Pantalla de ubicación'),
      ),
    );
  }
}
