class UserModel{
  String?name;
  String?userName;
  String?email;
  String?uId;
  
  UserModel({this.name,this.userName,this.email,this.uId});

  UserModel.fromjson(Map<String,dynamic>json){
    name=json['name'];
    email=json['email'];
    uId=json['uId'];
    userName=json['userName'];
  }

  Map <String,dynamic> toMap(){
    return {
      'name':name,
      'userName':userName,
      'email':email,
      'uId':uId,
    };
  }


}