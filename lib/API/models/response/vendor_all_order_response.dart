class VendorAllOrdersResponse {
  List<Data>? data;
  String? message;
  int? statusCode;

  VendorAllOrdersResponse({this.data, this.message, this.statusCode});

  VendorAllOrdersResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
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

class Data {
  int? id;
  String? orderId;
  int? userId;
  int? productId;
  int? userDetailsId;
  int? mrp;
  int? vendorPrice;
  int? productQty;
  Null? couponCode;
  int? discountPrice;
  Null? couponDiscount;
  int? tax;
  int? deliveryCharges;
  int? totalPrice;
  String? paymentMethod;
  int? status;
  Null? progressAt;
  Null? shippedAt;
  Null? deliveredAt;
  Null? cancelledAt;
  Null? remark;
  String? createdAt;
  String? updatedAt;
  int? vendorId;
  int? brandId;
  String? productName;
  String? productImages;
  String? summary;
  int? productSubCatogaryId;
  String? measurement;
  int? volume;
  int? cp;
  int? vendorSp;
  int? taxPercentage;
  int? taxPrice;
  int? sp;
  String? productDescription;
  String? productSku;
  String? slug;
  String? productTags;
  String? itemType;
  Null? bearerToken;
  Null? deletedAt;

  Data(
      {this.id,
        this.orderId,
        this.userId,
        this.productId,
        this.userDetailsId,
        this.mrp,
        this.vendorPrice,
        this.productQty,
        this.couponCode,
        this.discountPrice,
        this.couponDiscount,
        this.tax,
        this.deliveryCharges,
        this.totalPrice,
        this.paymentMethod,
        this.status,
        this.progressAt,
        this.shippedAt,
        this.deliveredAt,
        this.cancelledAt,
        this.remark,
        this.createdAt,
        this.updatedAt,
        this.vendorId,
        this.brandId,
        this.productName,
        this.productImages,
        this.summary,
        this.productSubCatogaryId,
        this.measurement,
        this.volume,
        this.cp,
        this.vendorSp,
        this.taxPercentage,
        this.taxPrice,
        this.sp,
        this.productDescription,
        this.productSku,
        this.slug,
        this.productTags,
        this.itemType,
        this.bearerToken,
        this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    userId = json['user_id'];
    productId = json['product_id'];
    userDetailsId = json['user_details_id'];
    mrp = json['mrp'];
    vendorPrice = json['vendor_price'];
    productQty = json['product_qty'];
    couponCode = json['coupon_code'];
    discountPrice = json['discount_price'];
    couponDiscount = json['coupon_discount'];
    tax = json['tax'];
    deliveryCharges = json['delivery_charges'];
    totalPrice = json['total_price'];
    paymentMethod = json['payment_method'];
    status = json['status'];
    progressAt = json['progress_at'];
    shippedAt = json['shipped_at'];
    deliveredAt = json['delivered_at'];
    cancelledAt = json['cancelled_at'];
    remark = json['remark'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    vendorId = json['vendor_id'];
    brandId = json['brand_id'];
    productName = json['product_name'];
    productImages = json['product_images'];
    summary = json['summary'];
    productSubCatogaryId = json['product_sub_catogary_id'];
    measurement = json['measurement'];
    volume = json['volume'];
    cp = json['cp'];
    vendorSp = json['vendor_sp'];
    taxPercentage = json['tax_percentage'];
    taxPrice = json['tax_price'];
    sp = json['sp'];
    productDescription = json['product_description'];
    productSku = json['product_sku'];
    slug = json['slug'];
    productTags = json['product_tags'];
    itemType = json['item_type'];
    bearerToken = json['bearer_token'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_id'] = this.orderId;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['user_details_id'] = this.userDetailsId;
    data['mrp'] = this.mrp;
    data['vendor_price'] = this.vendorPrice;
    data['product_qty'] = this.productQty;
    data['coupon_code'] = this.couponCode;
    data['discount_price'] = this.discountPrice;
    data['coupon_discount'] = this.couponDiscount;
    data['tax'] = this.tax;
    data['delivery_charges'] = this.deliveryCharges;
    data['total_price'] = this.totalPrice;
    data['payment_method'] = this.paymentMethod;
    data['status'] = this.status;
    data['progress_at'] = this.progressAt;
    data['shipped_at'] = this.shippedAt;
    data['delivered_at'] = this.deliveredAt;
    data['cancelled_at'] = this.cancelledAt;
    data['remark'] = this.remark;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['vendor_id'] = this.vendorId;
    data['brand_id'] = this.brandId;
    data['product_name'] = this.productName;
    data['product_images'] = this.productImages;
    data['summary'] = this.summary;
    data['product_sub_catogary_id'] = this.productSubCatogaryId;
    data['measurement'] = this.measurement;
    data['volume'] = this.volume;
    data['cp'] = this.cp;
    data['vendor_sp'] = this.vendorSp;
    data['tax_percentage'] = this.taxPercentage;
    data['tax_price'] = this.taxPrice;
    data['sp'] = this.sp;
    data['product_description'] = this.productDescription;
    data['product_sku'] = this.productSku;
    data['slug'] = this.slug;
    data['product_tags'] = this.productTags;
    data['item_type'] = this.itemType;
    data['bearer_token'] = this.bearerToken;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}