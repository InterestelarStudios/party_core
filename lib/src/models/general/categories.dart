import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class Categories {
  List<String> businessCategories(){
    return [
      "attractions",
      "bar",
      "brewery",
      "cafeteria",
      "casino",
      "steak-house",
      "ice-cream-parlor",
      "japanese-food",
      "games-room",
      "cyber-cafe",
      "educational",
      "fastfood",
      "pub",
      "restaurant",
    ];
  }

  IconData categoryIcon(String category){
    IconData? iconData;
    switch (category) {
      case "attractions":
        iconData = Icons.attractions_outlined; 
        break;
      case "bar":
        iconData = Icons.local_bar_outlined; 
        break;
      case "brewery":
        iconData = Ionicons.beer_outline; 
        break;
      case "cafeteria":
        iconData = Icons.local_cafe_outlined; 
        break;
      case "casino":
        iconData = Icons.casino_outlined; 
        break;
      case "cider-house":
        iconData = Icons.liquor_outlined; 
        break;
      case "discotheque":
        iconData = Icons.album; 
        break;
      case "fastfood":
        iconData = Ionicons.fast_food_outline; 
        break;
      case "pub":
        iconData = Icons.nightlife_outlined; 
        break;
      case "restaurant":
        iconData = Icons.restaurant_outlined; 
        break;
      case "takeout":
        iconData = Icons.takeout_dining_outlined; 
        break;
      case "steak-house":
        iconData = Icons.outdoor_grill_outlined; 
        break;
      case "ice-cream-parlor":
        iconData = Ionicons.ice_cream_outline; 
        break;
      case "japanese-food":
        iconData = Icons.translate_rounded; 
        break;
      case "games-room":
        iconData = Iconsax.game; 
        break;
      case "cyber-cafe":
        iconData = Iconsax.monitor; 
        break;
      case "educational":
        iconData = Iconsax.book; 
        break;
      default:
    }

    return iconData!;
  }

  String categoryTraslate(String category){
    String result = '';
    switch (category) {
      case "attractions":
        result = 'Atrações'; 
        break;
      case "bar":
        result = 'Bar'; 
        break;
      case "brewery":
        result = 'Cervejaria'; 
        break;
      case "cafeteria":
        result = "Cafeteria"; 
        break;
      case "casino":
        result = 'Cassino'; 
        break;
      case "fastfood":
        result = "Fast-Food"; 
        break;
      case "pub":
        result = 'PUB'; 
        break;
      case "restaurant":
        result = 'Restaurante'; 
        break;
      case "steak-house":
        result = 'Churrascaria'; 
        break;
      case "ice-cream-parlor":
        result = 'Sorveteria'; 
        break;
      case "japanese-food":
        result = 'Temakeria'; 
        break;
      case "games-room":
        result = 'Salão de Jogos'; 
        break;
      case "cyber-cafe":
        result = 'Cyber Café'; 
        break;
      case "educational":
        result = 'Educacional'; 
        break;
      default:
    }

    return result;
  }

}