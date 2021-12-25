class BrandsListModel {
  BrandListItem? data;
  String? code;
  String? message;

  BrandsListModel({this.data, this.code, this.message});

  BrandsListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? BrandListItem.fromJson(json['data']) : null;
    code = json['code'].toString();
    message = json['message'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}

class BrandListItem {
  List<AllBrands>? allBrands;
  String? brand;

  BrandListItem({this.allBrands, this.brand});

  BrandListItem.fromJson(Map<String, dynamic> json) {
    if (json['allBrands'] != null) {
      allBrands = <AllBrands>[];
      json['allBrands'].forEach((v) {
        allBrands!.add(AllBrands.fromJson(v));
      });
    }
    brand = json['brand'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allBrands != null) {
      data['allBrands'] = allBrands!.map((v) => v.toJson()).toList();
    }
    data['brand'] = brand;
    return data;
  }
}

class AllBrands {
  String? name;
  String? id;

  AllBrands({this.name, this.id});

  AllBrands.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
