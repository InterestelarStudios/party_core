import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String? id;
  String? title;
  String? description;
  num? price;
  String? category;
  String? image;
  bool? active;
  Timestamp? created;
  int? quantity;
  String? businessId;
  Map? businessDetails;
  List? sales;
  List? avaliations;
  List? variantes;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
    this.category,
    this.image,
    this.created,
    this.active,
    this.quantity,
    this.businessId,
    this.businessDetails,
    this.sales,
    this.avaliations,
    this.variantes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'image': image,
      'created': created,
      'active': active,
      'quantity': quantity,
      'businessId': businessId,
      'businessDetails': businessDetails,
      'sales': sales,
      'avaliations': avaliations,
      'variantes': variantes,
    };
  }

  factory Product.fromMap(DocumentSnapshot map) {
    return Product(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      price: map['price'] != null ? map['price'] as num : null,
      category: map['category'] != null ? map['category'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      active: map['active'] != null ? map['active'] as bool : null,
      quantity: 0,
      created: map['created'] != null ? map['created'] as Timestamp : null,
      businessId: map['businessId'] != null ? map['businessId'] as String : null,
      businessDetails: map['businessDetails'] != null ? map['businessDetails'] as Map : null,
      sales: map['sales'] != null ? map['sales'] as List : null,
      avaliations: map['avaliations'] != null ? map['avaliations'] as List : null,
      variantes: map['variantes'] != null ? map['variantes'] as List : null,
    );
  }

  factory Product.fromMapNative(Map map) {
    return Product(
      id: map['id'] != null ? map['id'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      price: map['price'] != null ? map['price'] as num : null,
      category: map['category'] != null ? map['category'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      active: map['active'] != null ? map['active'] as bool : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      created: map['created'] != null ? map['created'] as Timestamp : null,
      businessId: map['businessId'] != null ? map['businessId'] as String : null,
      businessDetails: map['businessDetails'] != null ? map['businessDetails'] as Map : null,
      sales: map['sales'] != null ? map['sales'] as List : null,
      avaliations: map['avaliations'] != null ? map['avaliations'] as List : null,
      variantes: map['variantes'] != null ? map['variantes'] as List : null,
    );
  }
}