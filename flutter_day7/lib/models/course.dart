class Course {
  int? id;
  String ?image;
  String ?title;
  String ?duration;
  String ?leves;
  List ?tags;
  bool ?Prerequisite;
  double ?rating;

  Course({this.id,this.image,this.title,this.duration,this.leves,this.tags,this.Prerequisite,this.rating});
// method name is standered 
  factory Course.fromJson(Map<String, dynamic >json){
    // return the constructor obj 
    return Course(
      id: json["id"],
      image: json["image"],
      title: json["title"],
      duration: json["duration"],
      leves: json["leves"],
      tags: json["tags"],
      Prerequisite: json["Prerequisite"],
      rating: json["rating"],

    );
  }
}