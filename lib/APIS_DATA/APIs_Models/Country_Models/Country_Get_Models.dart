// Country Get Model //
class CountryGetModel {
  String? countryId;
  String? countryName;
  // String? imageUrl;

  CountryGetModel({
    this.countryId,
    this.countryName,
    //  this.imageUrl
  });

  CountryGetModel.fromJson(Map<String, dynamic> json) {
    countryId = json['_id'];
    countryName = json['countryName'];
    // imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = countryId;
    data['countryName'] = countryName;
    // data['ImageUrl'] = imageUrl;
    return data;
  }
}
