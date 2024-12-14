
class Category{
  String ? category_Name;
  String ? category_Img;
  String ? category_Description;
  String ? category_Id;

  Category({this.category_Name,this.category_Img,this.category_Description, this.category_Id});

  factory Category.fromJason(Map json){
    return Category(category_Name: json["strCategory"],category_Img: json["strCategoryThumb"], category_Description: json["strCategoryDescription"], category_Id: json["idCategory"]);
  }
}