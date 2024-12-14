import 'package:flutter_appfr/data/global_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_appfr/models/meals.dart';
import 'package:flutter_appfr/models/categories.dart';

class Api {
  String link_categories =
      "https://www.themealdb.com/api/json/v1/1/categories.php";

  getCategory() async {
    var uri = Uri.parse(link_categories);
    var response = await http.get(uri);
    var responseJson = json.decode(response.body);
    for (var element in responseJson["categories"]) {
      allCategories.add(Category.fromJason(element));
    }
  }

  getMeal(String name) async {
    String link_meals =
        "https://www.themealdb.com/api/json/v1/1/filter.php?c=$name";

    var uri = Uri.parse(link_meals);
    var response = await http.get(uri);
    var responseJson = json.decode(response.body);
    allMeals.clear();
    for (var element in responseJson["meals"]) {
      allMeals.add(Meal.fromJasonMeal(element));
    }
  }
}
