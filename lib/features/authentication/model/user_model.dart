class User {
  bool? message;
  String? accessToken;
  UserData? userData;

  User({this.accessToken, this.userData, this.message});

  User.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    message = json['message'];
    userData =
        json['userData'] != null ? UserData.fromJson(json['userData']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['message'] = message;
    if (userData != null) {
      data['userData'] = userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? firstName;
  String? lastName;
  String? contact;

  UserData({this.firstName, this.lastName, this.contact});

  UserData.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    contact = json['contact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['contact'] = contact;
    return data;
  }
}
