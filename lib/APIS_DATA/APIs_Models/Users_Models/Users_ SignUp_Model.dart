//..... Sign Up User MODEL CLASS.....//
class UsersSignUpModel {
  String? msg;
  Data? data;

  UsersSignUpModel({this.msg, this.data});

  UsersSignUpModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? email;
  String? country;
  String? status;
  String? sId;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.email,
      this.country,
      this.status,
      this.sId,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    country = json['country'];
    status = json['status'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['country'] = country;
    data['status'] = status;
    data['_id'] = sId;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}


