// ignore_for_file: camel_case_types, unnecessary_new, prefer_collection_literals, unnecessary_this

class VerificationModel {
  String? userId;
  Data? data;

  VerificationModel({this.userId, this.data});

  VerificationModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? code;

  Data({this.code});

  Data.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    return data;
  }
}
