import 'package:flutter_day8/data/global_data.dart';
import 'package:flutter_day8/models/character.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api{
  String link = "https://api.disneyapi.dev/character";

  getData()async{
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var responseJson = json.decode(response.body);

    for (var element in responseJson["data"]) {
      allCharacters.add(Character.fromJson(element));
    }
    print(allCharacters.length);
  }
}