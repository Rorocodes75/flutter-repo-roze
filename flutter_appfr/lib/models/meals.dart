class Meal {
  String ?meal_Name;
  String ?meal_Img;

    Meal({this.meal_Name,this.meal_Img});

    factory Meal.fromJasonMeal(Map json){
      return Meal(meal_Name: json["strMeal"], meal_Img: json["strMealThumb"]);
    }
}