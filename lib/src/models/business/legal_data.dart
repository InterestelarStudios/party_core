import 'dart:convert';
class LegalData {

  String businessName;
  String cnpj;
  LegalData({
    required this.businessName,
    required this.cnpj,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessName': businessName,
      'cnpj': cnpj,
    };
  }

  factory LegalData.fromMap(Map<String, dynamic> map) {
    return LegalData(
      businessName: map['businessName'] as String,
      cnpj: map['cnpj'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LegalData.fromJson(String source) => LegalData.fromMap(json.decode(source) as Map<String, dynamic>);
}
