class RejectionTypeListModel {
  RejectionTypeItem? data;
  String? code;
  String? message;

  RejectionTypeListModel({this.data, this.code, this.message});

  RejectionTypeListModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? RejectionTypeItem.fromJson(json['data']) : null;
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

class RejectionTypeItem {
  List<AllRejection>? allRejection;

  RejectionTypeItem({this.allRejection});

  RejectionTypeItem.fromJson(Map<String, dynamic> json) {
    if (json['allRejection'] != null) {
      allRejection = <AllRejection>[];
      json['allRejection'].forEach((v) {
        allRejection!.add(AllRejection.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allRejection != null) {
      data['allRejection'] = allRejection!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllRejection {
  String? name;
  String? shortCode;
  String? rejectionTypeId;
  String? rejectionType;
  String? id;

  AllRejection(
      {this.name,
      this.shortCode,
      this.rejectionTypeId,
      this.rejectionType,
      this.id});

  AllRejection.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    shortCode = json['shortCode'].toString();
    rejectionTypeId = json['rejectionTypeId'].toString();
    rejectionType = json['rejectionType'].toString();
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['shortCode'] = shortCode;
    data['rejectionTypeId'] = rejectionTypeId;
    data['rejectionType'] = rejectionType;
    data['id'] = id;
    return data;
  }
}
