class UserSignupRes {
  String? error;
  String? name;
  String? email;
  String? token;

  UserSignupRes({this.error, this.name, this.email, this.token});

  UserSignupRes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    name = json['name'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['name'] = this.name;
    data['email'] = this.email;
    data['token'] = this.token;
    return data;
  }
}
