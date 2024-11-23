import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/viaje.dart';

class ApiService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Viaje>> getViajes() {
    return _db.collection('viajes').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Viaje.fromMap(doc.data(), doc.id);
      }).toList();
    });
  }

  Future<void> addViaje(Viaje viaje) async {
    await _db.collection('viajes').add(viaje.toMap());
  }
}
