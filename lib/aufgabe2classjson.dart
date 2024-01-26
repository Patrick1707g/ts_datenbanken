class User {
 
  String name;
  factory User.fromJSON(Map<String, dynamic> json) {
    return User(json["name"]);
  }
  Map<String,dynamic> toJSON(){
    return {
  
      'name': name,
     
    };
  }
  User( this.name);
}