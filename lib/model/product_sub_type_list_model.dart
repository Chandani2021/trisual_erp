class ProductSubTypeListModel {
  ProductSubTypeData? data;
  String? code;
  String? message;

  ProductSubTypeListModel({this.data, this.code, this.message});

  ProductSubTypeListModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? ProductSubTypeData.fromJson(json['data']) : null;
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

class ProductSubTypeData {
  List<AllSubType>? allSubType;

  ProductSubTypeData({this.allSubType});

  ProductSubTypeData.fromJson(Map<String, dynamic> json) {
    if (json['allSubType'] != null) {
      allSubType = <AllSubType>[];
      json['allSubType'].forEach((v) {
        allSubType!.add(AllSubType.fromJson(v));
      });
    }
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allSubType != null) {
      data['allSubType'] = allSubType!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllSubType {
  String? name;
  String? id;

  AllSubType({this.name, this.id});

  AllSubType.fromJson(Map<String, dynamic> json) {
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
