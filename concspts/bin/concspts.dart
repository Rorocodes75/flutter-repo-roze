import 'package:concspts/concspts.dart' as concspts;

void main(List<String> arguments) {
  // based on the list type it will give you the functionalites , int max , min .,.,,
  List mylist = [];
  List mylist2 = [];
  Person p1 = Person(age: 12, name: "ali");
  // Person p2 = Person(name:data["name"],
  //  age: data ["age"]);
  Person p3 = Person(name: data[0]["name"], age: data[0]["age"]);
  for (int i = 0; i < data.length; i++) {
    // give values from list ,
    Person newp = Person(name: data[i]["name"], age: data[i]["age"]);
    mylist.add(newp); // store the obj
    print(newp.name);
    print(newp.age);
  }

  print(mylist.first.name); // اذا ليست لها قيم اخليها قيمة مو dynamic

  for (var element in data) {
    print(element);
    Person newp = Person.fromJson(element); // element is the map
    mylist.add(Person.fromJson(element));
  }
  print(mylist2);
}

class Person {
  String? name;
  int? age;
  Person({this.age, this.name});

  // named constructor , takes the map and trun it into an obj , write factory
  factory Person.fromJson(Map<dynamic, dynamic> json) {
    // need to know the keys!!, json is the name of the map
    return Person(name: json["name"], age: json["age"]);
  }
}

// Map data ={
//   "name": "ali",
//   "age":23,
// };

List data = [
  {
    "name": "ali",
    "age": 23,
  },
  {
    "name": "dana",
    "age": 22,
  },
  {
    "name": "adbu",
    "age": 34,
  }
];
