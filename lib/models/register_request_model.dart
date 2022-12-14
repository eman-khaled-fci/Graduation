class RegisterRequestModel {
  String? first_name;
  String? last_name;
  String? college;
  String? university;
  String? gender;
  String? email;
  String? password;
  double? carbon_em;

  RegisterRequestModel(
      {this.first_name,
        this.last_name,
        this.college,
        this.university,
        this.gender,
        this.email,
        this.password,
        this.carbon_em});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    first_name = json['first_name'];
    last_name = json['last_name'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    email = json['email'];
    password = json['password'];
    carbon_em = json['carbon_em'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.first_name;
    data['last_name'] = this.last_name;
    data['college'] = this.college;
    data['university'] = this.university;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['password'] = this.password;
    data['carbon_em'] = this.carbon_em;
    return data;
  }
}
