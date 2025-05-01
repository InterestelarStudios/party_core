// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Usuario {

  String id;
  String username;
  String email;
  String? image;
  Timestamp created;

  Usuario({
    required this.id,
    required this.username,
    required this.email,
    this.image,
    required this.created,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'image': image,
      'created': created,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      image: map['image'] != null ? map['image'] as String : null,
      created: map['created'] as Timestamp,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source) as Map<String, dynamic>);
}
