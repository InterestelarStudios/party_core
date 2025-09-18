// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interestelar_party/interestelar_party.dart';

class Business {

  bool? active;
  String? id;
  String? name;
  String? type;  //stablishment - eventMenager
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
  BusinessResource? businessResource;
  List<ProductVariant>? variants;
  List<TableCategory>? tableCategories;

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
    this.businessResource,
    this.variants,
    this.tableCategories,
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
      'businessResource' : businessResource,
      'variants': variants!.map((x) => x.toMap()).toList(),
      'tableCategories' : tableCategories!.map((x) => x.toMap()).toList(),
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
      businessResource: map['businessResource'] != null ? BusinessResource.fromMap(map['businessResource'] as Map<String,dynamic>) : null,
      variants: map['variants'] == null ? [] : map['variants'].map<ProductVariant>((e)=> ProductVariant.fromMap(e)).toList(),
      tableCategories: map['tableCategories'] != null ? map['tableCategories'].map<TableCategory>((x)=> TableCategory.fromMap(x)).tolist() as List<TableCategory> : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Business.fromJson(String source) => Business.fromMap(json.decode(source) as Map<String, dynamic>);
}


class BusinessResource {
 
  String operationalType; // demand - order
  bool orders;
  bool events;
  bool delivery;
  bool tables;

  BusinessResource({
    required this.operationalType,
    required this.orders,
    required this.events,
    required this.delivery,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationalType': operationalType,
      'orders': orders,
      'events': events,
      'delivery': delivery,
      'tables': tables,
    };
  }

  factory BusinessResource.fromMap(Map<String, dynamic> map) {
    return BusinessResource(
      operationalType: map['operationalType'] as String,
      orders: map['orders'] as bool,
      events: map['events'] as bool,
      delivery: map['delivery'] as bool,
      tables: map['tables'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessResource.fromJson(String source) => BusinessResource.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BusinessDetails {
 
  String id;
  String logo;
  String name;
  String category;
  BusinessDetails({
    required this.id,
    required this.logo,
    required this.name,
    required this.category,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'logo': logo,
      'name': name,
      'category': category,
    };
  }

  factory BusinessDetails.fromMap(Map<String, dynamic> map) {
    return BusinessDetails(
      id: map['id'] as String,
      logo: map['logo'] as String,
      name: map['name'] as String,
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessDetails.fromJson(String source) => BusinessDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
