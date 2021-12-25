class CommonModel {
  String? code;
  String? msg;

  CommonModel({this.code, this.msg});

  CommonModel.fromJson(Map<String, dynamic> json) {
    code = json["code"].toString();
    msg = json["message"].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["code"] = code;
    data["message"] = msg;
    return data;
  }
}
