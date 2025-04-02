import 'dart:convert';

class Address {

  String street;
  String number;
  String locality;
  String code;
  String city;
  String state;
  String country;

  Address({
    required this.street,
    required this.number,
    required this.locality,
    required this.code,
    required this.city,
    required this.state,
    required this.country,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'street': street,
      'number': number,
      'locality': locality,
      'code': code,
      'city': city,
      'state': state,
      'country': country,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      street: map['street'] as String,
      number: map['number'] as String,
      locality: map['locality'] as String,
      code: map['code'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      country: map['country'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source) as Map<String, dynamic>);
}
