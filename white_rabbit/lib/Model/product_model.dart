
class ProductResponseModel {
  List<Products>? products;
  bool? status;

  ProductResponseModel({this.products, this.status});

  ProductResponseModel.fromJson(Map<String, dynamic> json) {
    if(json["products"] is List)
      this.products = json["products"]==null ? null : (json["products"] as List).map((e)=>Products.fromJson(e)).toList();
    if(json["status"] is bool)
      this.status = json["status"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if(this.products != null)
      data["products"] = this.products?.map((e)=>e.toJson()).toList();
    data["status"] = this.status;
    return data;
  }
}

class Products {
  String? productTitle;
  String? productImage;
  int? offerPercentage;

  Products({this.productTitle, this.productImage, this.offerPercentage});

  Products.fromJson(Map<String, dynamic> json) {
    if(json["product_title"] is String)
      this.productTitle = json["product_title"];
    if(json["product_image"] is String)
      this.productImage = json["product_image"];
    if(json["offer_percentage"] is int)
      this.offerPercentage = json["offer_percentage"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["product_title"] = this.productTitle;
    data["product_image"] = this.productImage;
    data["offer_percentage"] = this.offerPercentage;
    return data;
  }
}