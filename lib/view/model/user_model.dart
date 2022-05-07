class UserModel {
  int? id;
  String? userName;
  int? age;
  bool? isMarried;

  UserModel({this.id, this.userName, this.age, this.isMarried});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    age = json['age'];
    isMarried = json['isMarried'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['age'] = this.age;
    data['isMarried'] = this.isMarried;
    return data;
  }
}

