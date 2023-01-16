class StateGetModel {
  String? stateId;
  String? countryId;
  String? state;
  // String? imageUrl;

  StateGetModel({
    this.stateId,
    this.countryId,
    this.state,
    //this.imageUrl
  });

  StateGetModel.fromJson(Map<String, dynamic> json) {
    stateId = json['_id'];
    countryId = json['country'];
    state = json['state'];
    // imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = stateId;
    data['country'] = countryId;
    data['state'] = state;
    // data['ImageUrl'] = imageUrl;
    return data;
  }
}
