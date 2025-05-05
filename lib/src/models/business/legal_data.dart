// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LegalData {

  String? businessName;
  String? cnpj;
  PersonalData? personalData;
  BusinessDocument? cnpjDoc;
  BusinessDocument? certificateDoc;
  BusinessDocument? personalDoc;
  
  LegalData({
    this.businessName,
    this.cnpj,
    this.personalData,
    this.cnpjDoc,
    this.certificateDoc,
    this.personalDoc,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessName': businessName,
      'cnpj': cnpj,
      'personalData': personalData?.toMap(),
      'cnpjDoc': cnpjDoc?.toMap(),
      'certificateDoc': certificateDoc?.toMap(),
      'personalDoc': personalDoc?.toMap(),
    };
  }

  factory LegalData.fromMap(Map<String, dynamic> map) {
    return LegalData(
      businessName: map['businessName'] != null ? map['businessName'] as String : null,
      cnpj: map['cnpj'] != null ? map['cnpj'] as String : null,
      personalData: map['personalData'] != null ? PersonalData.fromMap(map['personalData'] as Map<String,dynamic>) : null,
      cnpjDoc: map['cnpjDoc'] != null ? BusinessDocument.fromMap(map['cnpjDoc'] as Map<String,dynamic>) : null,
      certificateDoc: map['certificateDoc'] != null ? BusinessDocument.fromMap(map['certificateDoc'] as Map<String,dynamic>) : null,
      personalDoc: map['personalDoc'] != null ? BusinessDocument.fromMap(map['personalDoc'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LegalData.fromJson(String source) => LegalData.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BusinessDocument {

  String type;
  String status;
  String url;
  String? message;

  BusinessDocument({
    required this.type,
    required this.status,
    required this.url,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'status': status,
      'url': url,
      'message': message,
    };
  }

  factory BusinessDocument.fromMap(Map<String, dynamic> map) {
    return BusinessDocument(
      type: map['type'] as String,
      status: map['status'] as String,
      url: map['url'] as String,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BusinessDocument.fromJson(String source) => BusinessDocument.fromMap(json.decode(source) as Map<String, dynamic>);
}

class PersonalData {

  String? fullName;
  String? cpf;
  String? phone;
  Address? address;

  PersonalData({
    this.fullName,
    this.cpf,
    this.phone,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'cpf': cpf,
      'phone': phone,
      'address': address?.toMap(),
    };
  }

  factory PersonalData.fromMap(Map<String, dynamic> map) {
    return PersonalData(
      fullName: map['fullName'] != null ? map['fullName'] as String : null,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      address: map['address'] != null ? Address.fromMap(map['address'] as Map<String,dynamic>) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonalData.fromJson(String source) => PersonalData.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Address {

  String? cep;
  String? street;
  String? district;
  String? number;
  String? state;
  String? complement;

  Address({
    this.cep,
    this.street,
    this.district,
    this.number,
    this.state,
    this.complement,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'street': street,
      'district': district,
      'number': number,
      'state': state,
      'complement': complement,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      cep: map['cep'] != null ? map['cep'] as String : null,
      street: map['street'] != null ? map['street'] as String : null,
      district: map['district'] != null ? map['district'] as String : null,
      number: map['number'] != null ? map['number'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      complement: map['complement'] != null ? map['complement'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source) as Map<String, dynamic>);
}
