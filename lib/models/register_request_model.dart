class RegisterRequestModel {
  String? firstName;
  String? lastName;
  String? college;
  String? university;
  String? gender;
  String? email;
  String? password;
  double? carbonEm;

  RegisterRequestModel(
      {this.firstName,
        this.lastName,
        this.college,
        this.university,
        this.gender,
        this.email,
        this.password,
        this.carbonEm});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    college = json['college'];
    university = json['university'];
    gender = json['gender'];
    email = json['email'];
    password = json['password'];
    carbonEm = json['carbon_em'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['college'] = this.college;
    data['university'] = this.university;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['password'] = this.password;
    data['carbon_em'] = this.carbonEm;
    return data;
  }
}
