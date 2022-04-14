class DataModel {
    // int id;
    String name;
    String description;
    int price;
    int stars;
    int people;
    String img;
    String location;
    // int selectedPeople;
    
    DataModel({
      // required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.stars,
      required this.people,
      required this.img,
      required this.location,
      // required this.selectedPeople,
    });

    factory DataModel.fromJson(Map<String, dynamic> json){
      return DataModel(
        name: json["name"], 
        description: json["description"], 
        price: json["price"], 
        stars: json["stars"], 
        people: json["people"], 
        img: json["img"], 
        location: json["location"]
      );
    }
}
