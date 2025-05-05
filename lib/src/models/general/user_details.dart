import 'dart:convert';

class UserDetails {

  String id;
  String username;
  String email;
  String? image;

  UserDetails({
    required this.id,
    required this.username,
    required this.email,
    required this.image,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'image': image,
    };
  }

  factory UserDetails.fromMap(Map<String, dynamic> map) {
    return UserDetails(
      id: map['id'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDetails.fromJson(String source) => UserDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
