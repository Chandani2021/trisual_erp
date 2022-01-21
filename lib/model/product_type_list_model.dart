class ProductTypeListModel {
  Data? data;
  String? code;
  String? message;

  ProductTypeListModel({this.data, this.code, this.message});

  ProductTypeListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
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

class Data {
  List<AllProductType>? allProductType;

  Data({this.allProductType});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['allProductType'] != null) {
      allProductType = <AllProductType>[];
      json['allProductType'].forEach((v) {
        allProductType!.add(AllProductType.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allProductType != null) {
      data['allProductType'] = allProductType!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllProductType {
  String? name;
  List<ProductSubTypeList>? productSubTypeList;
  String? id;

  AllProductType({this.name, this.productSubTypeList, this.id});

  AllProductType.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['productSubTypeList'] != null) {
      productSubTypeList = <ProductSubTypeList>[];
      json['productSubTypeList'].forEach((v) {
        productSubTypeList!.add(ProductSubTypeList.fromJson(v));
      });
    }
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    if (productSubTypeList != null) {
      data['productSubTypeList'] =
          productSubTypeList!.map((v) => v.toJson()).toList();
    }
    data['id'] = this.id;
    return data;
  }
}

class ProductSubTypeList {
  String? productTypeId;
  String? productSubTypeId;
  int? sequence;
  bool? isActive;
  ProductSubType? productSubType;
  int? id;

  ProductSubTypeList(
      {this.productTypeId,
      this.productSubTypeId,
      this.sequence,
      this.isActive,
      this.productSubType,
      this.id});

  ProductSubTypeList.fromJson(Map<String, dynamic> json) {
    productTypeId = json['productTypeId'];
    productSubTypeId = json['productSubTypeId'];
    sequence = json['sequence'];
    isActive = json['isActive'];
    productSubType = json['productSubType'] != null
        ? ProductSubType.fromJson(json['productSubType'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productTypeId'] = productTypeId;
    data['productSubTypeId'] = productSubTypeId;
    data['sequence'] = sequence;
    data['isActive'] = isActive;
    if (productSubType != null) {
      data['productSubType'] = productSubType!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class ProductSubType {
  String? name;
  String? id;

  ProductSubType({this.name, this.id});

  ProductSubType.fromJson(Map<String, dynamic> json) {
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
