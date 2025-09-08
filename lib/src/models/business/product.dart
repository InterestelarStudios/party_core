// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:interestelar_party/interestelar_party.dart';

class Product {

  String id;
  String title;
  String? description;
  num price;
  String category;
  String? image;
  bool active;
  Timestamp created;
  BusinessDetails business;
  List<ProductVariant>? variants;

  Product({
    required this.id,
    required this.title,
    this.description,
    required this.price,
    required this.category,
    this.image,
    required this.active,
    required this.created,
    required this.business,
    this.variants,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'image': image,
      'active': active,
      'created': created,
      'business': business.toMap(),
      'variants': variants!.map((x) => x.toMap()).toList(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] != null ? map['description'] as String : null,
      price: map['price'] as num,
      category: map['category'] as String,
      image: map['image'] != null ? map['image'] as String : null,
      active: map['active'] as bool,
      created: map['created'] as Timestamp,
      business: BusinessDetails.fromMap(map['business'] as Map<String,dynamic>),
      variants: map['variants'] == null ? [] : map['variants'].map<ProductVariant>((e)=> ProductVariant.fromMap(e)).toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
