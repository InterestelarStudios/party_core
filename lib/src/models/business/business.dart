// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:interestelar_party/src/models/business/legal_data.dart';
import 'package:interestelar_party/src/models/general/location.dart';
import 'package:interestelar_party/src/models/general/user_details.dart';

class Business {

  bool? active;
  String? id;
  String? name;
  String? type;
  List? images;
  List? categories;
  Timestamp? created;
  LegalData? legalData;
  String? logo;
  String? about;
  UserDetails? creator;
  Location? location;
  bool? verified;
  List? productsCategories;

  Business({
    this.active,
    this.id,
    this.name,
    this.type,
    this.images,
    this.categories,
    this.created,
    this.legalData,
    this.logo,
    this.about,
    this.creator,
    this.location,
    this.verified,
    this.productsCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'id': id,
      'name': name,
      'type': type,
      'images': images,
      'categories':categories,
      'created': created,
      'legalData': legalData?.toMap(),
      'logo': logo,
      'about': about,
      'creator': creator?.toMap(),
      'location': location?.toMap(),
      'verified': verified,
      'productsCategories': productsCategories,
    };
  }

  factory Business.fromMap(Map<String, dynamic> map) {
    return Business(
      active: map['active'] != null ? map['active'] as bool : null,
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      images: map['images'] != null ? map['images'] as List : null,
      categories: map['categories'] != null ? map['categories'] as List : null,
      created: map['created'] != null ? map['created'] as Timestamp : null,
      legalData: map['legalData'] != null ? LegalData.fromMap(map['legalData'] as Map<String,dynamic>) : null,
      logo: map['logo'] != null ? map['logo'] as String : null,
      about: map['about'] != null ? map['about'] as String : null,
      creator: map['creator'] != null ? UserDetails.fromMap(map['creator'] as Map<String,dynamic>) : null,
      location: map['location'] != null ? Location.fromMap(map['location'] as Map<String,dynamic>) : null,
      verified: map['verified'] != null ? map['verified'] as bool : null,
      productsCategories: map['productsCategories'] != null ? map['productsCategories'] as List : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Business.fromJson(String source) => Business.fromMap(json.decode(source) as Map<String, dynamic>);
}
