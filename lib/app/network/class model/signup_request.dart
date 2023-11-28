class UserSignupReq {
  String? error;
  String? name;
  String? email;
  String? password;

  UserSignupReq({this.error, this.name, this.email, this.password});

  UserSignupReq.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
