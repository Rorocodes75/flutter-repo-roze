class Character {
  int ? id;
  String ? name;
  String ? imgUrl;
  Character({this.id,this.name,this.imgUrl});

  factory Character.fromJson(Map json){
    return Character(id:json["_id"],name: json["name"],imgUrl: json["imageUrl"]);
  }
}