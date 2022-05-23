class VendorProductsDetailsResponse {
  Result? result;
  int? statusCode;

  VendorProductsDetailsResponse({this.result, this.statusCode});

  VendorProductsDetailsResponse.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['status_code'] = this.statusCode;
    return data;
  }
}

class Result {
  int? id;
  String? productName;
  int? vendorId;
  String? vendorName;
  String? measurement;
  int? volume;
  String? brandName;
  String? productImages;
  String? summary;
  String? productSku;
  String? slug;
  String? productTags;
  String? itemType;
  int? status;
  num? mrp;
  num? bestPrice;
  num? discountPrice;
  num? discountPercentage;
  int? inCart;
  int? inWishlist;

  Result(
      {this.id,
        this.productName,
        this.vendorId,
        this.vendorName,
        this.measurement,
        this.volume,
        this.brandName,
        this.productImages,
        this.summary,
        this.productSku,
        this.slug,
        this.productTags,
        this.itemType,
        this.status,
        this.mrp,
        this.bestPrice,
        this.discountPrice,
        this.discountPercentage,
        this.inCart,
        this.inWishlist});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    vendorId = json['vendor_id'];
    vendorName = json['vendor_name'];
    measurement = json['measurement'];
    volume = json['volume'];
    brandName = json['brand_name'];
    productImages = json['product_images'];
    summary = json['summary'];
    productSku = json['product_sku'];
    slug = json['slug'];
    productTags = json['product_tags'];
    itemType = json['item_type'];
    status = json['status'];
    mrp = json['mrp'];
    bestPrice = json['best_price'];
    discountPrice = json['discount_price'];
    discountPercentage = json['discount_percentage'];
    inCart = json['in_cart'];
    inWishlist = json['in_wishlist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_name'] = this.productName;
    data['vendor_id'] = this.vendorId;
    data['vendor_name'] = this.vendorName;
    data['measurement'] = this.measurement;
    data['volume'] = this.volume;
    data['brand_name'] = this.brandName;
    data['product_images'] = this.productImages;
    data['summary'] = this.summary;
    data['product_sku'] = this.productSku;
    data['slug'] = this.slug;
    data['product_tags'] = this.productTags;
    data['item_type'] = this.itemType;
    data['status'] = this.status;
    data['mrp'] = this.mrp;
    data['best_price'] = this.bestPrice;
    data['discount_price'] = this.discountPrice;
    data['discount_percentage'] = this.discountPercentage;
    data['in_cart'] = this.inCart;
    data['in_wishlist'] = this.inWishlist;
    return data;
  }
}