class GradeListModel {
  GradeListItem? data;
  String? code;
  String? message;

  GradeListModel({this.data, this.code, this.message});

  GradeListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? GradeListItem.fromJson(json['data']) : null;
    code = json['code'.toString()];
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

class GradeListItem {
  List<AllGrade>? allGrade;
  String? grade;

  GradeListItem({this.allGrade, this.grade});

  GradeListItem.fromJson(Map<String, dynamic> json) {
    if (json['allGrade'] != null) {
      allGrade = <AllGrade>[];
      json['allGrade'].forEach((v) {
        allGrade!.add(AllGrade.fromJson(v));
      });
    }
    grade = json['grade'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allGrade != null) {
      data['allGrade'] = allGrade!.map((v) => v.toJson()).toList();
    }
    data['grade'] = grade;
    return data;
  }
}

class AllGrade {
  String? name;
  String? id;

  AllGrade({this.name, this.id});

  AllGrade.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
