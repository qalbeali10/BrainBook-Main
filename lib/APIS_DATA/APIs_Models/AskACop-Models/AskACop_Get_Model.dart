// class AskACopGetModel {
//   String? askCopId;
//   String? question;
//   List<Null>? answes;
//   String? createdAt;
//   String? updatedAt;

//   AskACopGetModel(
//       {this.askCopId, this.question, this.answes, this.createdAt, this.updatedAt});

//   AskACopGetModel.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     question = json['question'];
//     if (json['answes'] != null) {
//       answes = <Null>[];
//       json['answes'].forEach((v) {
//         answes!.add(new Null.fromJson(v));
//       });
//     }
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['question'] = this.question;
//     if (this.answes != null) {
//       data['answes'] = this.answes!.map((v) => v.toJson()).toList();
//     }
//     data['createdAt'] = this.createdAt;
//     data['updatedAt'] = this.updatedAt;
//     return data;
//   }
// }