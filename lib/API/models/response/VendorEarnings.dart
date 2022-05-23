class VendorEarnings {
  num? earningToday;
  List<EarningData>? data;
  String? message;
  int? statusCode;

  VendorEarnings({this.earningToday, this.data, this.message, this.statusCode});

  VendorEarnings.fromJson(Map<String, dynamic> json) {
    earningToday = json['earning_today'];
    if (json['data'] != null) {
      data = <EarningData>[];
      json['data'].forEach((v) {
        data!.add(new EarningData.fromJson(v));
      });
    }
    message = json['message'];
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['earning_today'] = this.earningToday;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    return data;
  }
}

class EarningData {
  String? orderId;
  String? firstName;
  num? totalPrice;
  num? id;
  String? lastName;
  String? image;

  EarningData(
      {this.orderId,
        this.firstName,
        this.totalPrice,
        this.id,
        this.lastName,
        this.image});

  EarningData.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    firstName = json['first_name'];
    totalPrice = json['total_price'];
    id = json['id'];
    lastName = json['last_name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['first_name'] = this.firstName;
    data['total_price'] = this.totalPrice;
    data['id'] = this.id;
    data['last_name'] = this.lastName;
    data['image'] = this.image;
    return data;
  }
}