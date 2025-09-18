import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TableCategory {

  String name;
  String? description;
  bool openToReservation;
  int? minimalDuration;
  num? priceForMinimalDuration;
  int capacity;
  bool onlyOne;
  
  TableCategory({
    required this.name,
    this.description,
    required this.openToReservation,
    this.minimalDuration,
    this.priceForMinimalDuration,
    required this.capacity,
    required this.onlyOne,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'openToReservation': openToReservation,
      'minimalDuration': minimalDuration,
      'priceForMinimalDuration': priceForMinimalDuration,
      'capacity': capacity,
      'onlyOne': onlyOne,
    };
  }

  factory TableCategory.fromMap(Map<String, dynamic> map) {
    return TableCategory(
      name: map['name'] as String,
      description: map['description'] != null ? map['description'] as String : null,
      openToReservation: map['openToReservation'] as bool,
      minimalDuration: map['minimalDuration'] != null ? map['minimalDuration'] as int : null,
      priceForMinimalDuration: map['priceForMinimalDuration'] != null ? map['priceForMinimalDuration'] as num : null,
      capacity: map['capacity'] as int,
      onlyOne: map['onlyOne'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableCategory.fromJson(String source) => TableCategory.fromMap(json.decode(source) as Map<String, dynamic>);
}
