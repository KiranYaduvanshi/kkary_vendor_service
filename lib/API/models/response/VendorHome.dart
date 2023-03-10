class VendorHome {
  VendorHomeData? data;
  String? message;
  int? statusCode;

  VendorHome({this.data, this.message, this.statusCode});

  VendorHome.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new VendorHomeData.fromJson(json['data']) : null;
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

class VendorHomeData {
  int? productCount;
  int? totalDelivered;
  int? pendingOrders;
  int? cancelledOrder;
  int? approvedOrder;
  int? underShipping;
  int? totalOrders;

  VendorHomeData(
      {this.productCount,
      this.totalDelivered,
      this.pendingOrders,
      this.cancelledOrder,
      this.approvedOrder,
      this.underShipping,
      this.totalOrders});

  VendorHomeData.fromJson(Map<String, dynamic> json) {
    productCount = json['product_count'];
    totalDelivered = json['total_delivered'];
    pendingOrders = json['pending_orders'];
    cancelledOrder = json['cancelled_order'];
    approvedOrder = json['approved_order'];
    underShipping = json['under_shipping'];
    totalOrders = json['total_orders'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_count'] = this.productCount;
    data['total_delivered'] = this.totalDelivered;
    data['pending_orders'] = this.pendingOrders;
    data['cancelled_order'] = this.cancelledOrder;
    data['approved_order'] = this.approvedOrder;
    data['under_shipping'] = this.underShipping;
    data['total_orders'] = this.totalOrders;
    return data;
  }
}
