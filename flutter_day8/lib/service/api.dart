import 'package:http/http.dart' as http;
class Api {
  String link = "https://api.disneyapi.dev/character";

  String n = "5";
  
  gitdata()async{
    var url = Uri.parse(link); 
    var response = await http.get(url);

    print(response);
     }

}