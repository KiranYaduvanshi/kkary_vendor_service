class VendorProductsResponse {
  List<VendorProductsData>? data;
  String? message;
  int? statusCode;

  VendorProductsResponse({this.data, this.message, this.statusCode});

  VendorProductsResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <VendorProductsData>[];
      json['data'].forEach((v) {
        data!.add(new VendorProductsData.fromJson(v));
      });
    }
    message = json['message'];
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    data['status_code'] = this.statusCode;
    return data;
  }
}

class VendorProductsData {
  int? id;
  String? productName;
  String? productImages;
  int? productQty;
  int? status;
  num? sp;
  String? itemType;
  num? cp;

  VendorProductsData(
      {this.id,
        this.productName,
        this.productImages,
        this.productQty,
        this.status,
        this.sp,
        this.itemType,
        this.cp});

  VendorProductsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    productImages = json['product_images'];
    productQty = json['product_qty'];
    status = json['status'];
    sp = json['sp'];
    itemType = json['item_type'];
    cp = json['cp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_name'] = this.productName;
    data['product_images'] = this.productImages;
    data['product_qty'] = this.productQty;
    data['status'] = this.status;
    data['sp'] = this.sp;
    data['item_type'] = this.itemType;
    data['cp'] = this.cp;
    return data;
  }
}