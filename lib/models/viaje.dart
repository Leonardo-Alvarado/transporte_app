import 'package:cloud_firestore/cloud_firestore.dart';

class Viaje {
  final String id;
  final String origen;
  final String destino;
  final DateTime fecha;

  Viaje({
    required this.id,
    required this.origen,
    required this.destino,
    required this.fecha,
  });

  factory Viaje.fromMap(Map<String, dynamic> data, String documentId) {
    return Viaje(
      id: documentId,
      origen: data['origen'] ?? '',
      destino: data['destino'] ?? '',
      fecha: (data['fecha'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'origen': origen,
      'destino': destino,
      'fecha': Timestamp.fromDate(fecha),
    };
  }
}
