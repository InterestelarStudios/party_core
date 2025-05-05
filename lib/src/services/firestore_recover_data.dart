import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interestelar_party/interestelar_party.dart';

class FirebaseRecoverData{

  Future<Usuario?> recoverUsuario(String userId) async {
    final snapshot = await FirebaseFirestore.instance.collection('users').doc(userId).get();
    return !snapshot.exists ? null : Usuario.fromMap(snapshot.data()!);
  }

  Future<Business?> recoverBusiness(String id) async {
    final snapshot = await FirebaseFirestore.instance.collection('business').doc(id).get();
    return !snapshot.exists ? null : Business.fromMap(snapshot.data()!);
  }


}