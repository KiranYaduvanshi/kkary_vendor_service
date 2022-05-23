class VendorOrderDetailsResponse {
  VendorOrderDetails? data;
  String? message;
  int? statusCode;

  VendorOrderDetailsResponse({this.data, this.message, this.statusCode});

  VendorOrderDetailsResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new VendorOrderDetails.fromJson(json['data']) : null;
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

class VendorOrderDetails {
  String? productName;
  String? productDescription;
  num? productQty;
  num? mrp;
  String? paymentMethod;
  num? vendorPrice;
  num? discountPrice;
  num? tax;
  num? deliveryCharges;
  num? totalPrice;
  String? name;
  int? contact;
  String? address;
  String? city;
  String? state;
  String? pincode;
  String? tags;
  num? discountPercentage;

  VendorOrderDetails(
      {this.productName,
        this.productDescription,
        this.productQty,
        this.mrp,
        this.paymentMethod,
        this.vendorPrice,
        this.discountPrice,
        this.tax,
        this.deliveryCharges,
        this.totalPrice,
        this.name,
        this.contact,
        this.address,
        this.city,
        this.state,
        this.pincode,
        this.tags,
        this.discountPercentage});

  VendorOrderDetails.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    productDescription = json['product_description'];
    productQty = json['product_qty'];
    mrp = json['mrp'];
    paymentMethod = json['payment_method'];
    vendorPrice = json['vendor_price'];
    discountPrice = json['discount_price'];
    tax = json['tax'];
    deliveryCharges = json['delivery_charges'];
    totalPrice = json['total_price'];
    name = json['name'];
    contact = json['contact'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    pincode = json['pincode'];
    tags = json['product_tags'];
    discountPercentage = json['discount_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_name'] = this.productName;
    data['product_description'] = this.productDescription;
    data['product_qty'] = this.productQty;
    data['mrp'] = this.mrp;
    data['payment_method'] = this.paymentMethod;
    data['vendor_price'] = this.vendorPrice;
    data['discount_price'] = this.discountPrice;
    data['tax'] = this.tax;
    data['delivery_charges'] = this.deliveryCharges;
    data['total_price'] = this.totalPrice;
    data['name'] = this.name;
    data['contact'] = this.contact;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['product_tags']=this.pincode;
    data['discount_percentage'] = this.discountPercentage;
    return data;
  }
}