class ProfileResponse {
  Data? data;
  String? message;
  int? statusCode;

  ProfileResponse({this.data, this.message, this.statusCode});

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    return data;
  }
}

class Data {
  int? id;
  String? fname;
  String? lname;
  String? email;
  String? mobile;
  String? address;
  String? city;
  String? state;
  String? country;
  String? zipcode;
  String? bio;
  String? image;

  Data(
      {this.id,
        this.fname,
        this.lname,
        this.email,
        this.mobile,
        this.address,
        this.city,
        this.state,
        this.country,
        this.zipcode,
        this.bio,
        this.image});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fname = json['fname'];
    lname = json['lname'];
    email = json['email'];
    mobile = json['mobile'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zipcode = json['zipcode'];
    bio = json['bio'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['zipcode'] = this.zipcode;
    data['bio'] = this.bio;
    data['image'] = this.image;
    return data;
  }
}