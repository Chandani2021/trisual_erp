class DepartmentListModel {
  DepartmentListData? data;
  String? code;
  String? message;

  DepartmentListModel({this.data, this.code, this.message});

  DepartmentListModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? DepartmentListData.fromJson(json['data']) : null;
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

class DepartmentListData {
  List<AllDepartment>? allDepartment;
  String? department;

  DepartmentListData({this.allDepartment, this.department});

  DepartmentListData.fromJson(Map<String, dynamic> json) {
    if (json['allDepartment'] != null) {
      allDepartment = <AllDepartment>[];
      json['allDepartment'].forEach((v) {
        allDepartment!.add(AllDepartment.fromJson(v));
      });
    }
    department = json['department'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allDepartment != null) {
      data['allDepartment'] = allDepartment!.map((v) => v.toJson()).toList();
    }
    data['department'] = department;
    return data;
  }
}

class AllDepartment {
  String? code;
  String? name;
  String? identity;
  String? statusId;
  String? status;
  String? id;
  String? createdDate;
  String? createdById;
  String? modifiedDate;
  String? modifiedById;
  String? createdBy;
  String? modifiedBy;

  AllDepartment(
      {this.code,
      this.name,
      this.identity,
      this.statusId,
      this.status,
      this.id,
      this.createdDate,
      this.createdById,
      this.modifiedDate,
      this.modifiedById,
      this.createdBy,
      this.modifiedBy});

  AllDepartment.fromJson(Map<String, dynamic> json) {
    code = json['code'].toString();
    name = json['name'].toString();
    identity = json['identity'].toString();
    statusId = json['statusId'].toString();
    status = json['status'].toString();
    id = json['id'].toString();
    createdDate = json['createdDate'].toString();
    createdById = json['createdById'].toString();
    modifiedDate = json['modifiedDate'].toString();
    modifiedById = json['modifiedById'].toString();
    createdBy = json['createdBy'].toString();
    modifiedBy = json['modifiedBy'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    data['identity'] = identity;
    data['statusId'] = statusId;
    data['status'] = status;
    data['id'] = id;
    data['createdDate'] = createdDate;
    data['createdById'] = createdById;
    data['modifiedDate'] = modifiedDate;
    data['modifiedById'] = modifiedById;
    data['createdBy'] = createdBy;
    data['modifiedBy'] = modifiedBy;
    return data;
  }
}
