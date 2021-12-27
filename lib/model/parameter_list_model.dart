class ParameterListModel {
  Data? data;
  String? code;
  String? message;

  ParameterListModel({this.data, this.code, this.message});

  ParameterListModel.fromJson(Map<String, dynamic> json) {
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
  String? parameter;
  List<AllParameters>? allParameters;

  Data({this.parameter, this.allParameters});

  Data.fromJson(Map<String, dynamic> json) {
    parameter = json['parameter'];
    if (json['allParameters'] != null) {
      allParameters = <AllParameters>[];
      json['allParameters'].forEach((v) {
        allParameters!.add(AllParameters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['parameter'] = parameter;
    if (allParameters != null) {
      data['allParameters'] = allParameters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllParameters {
  String? name;
  String? unit;
  String? metaData;
  String? specifications;
  String? isActive;
  String? processId;
  String? process;
  ParameterType? parameterType;
  Specs? specs;
  String? id;

  AllParameters(
      {this.name,
      this.unit,
      this.metaData,
      this.specifications,
      this.isActive,
      this.processId,
      this.process,
      this.parameterType,
      this.specs,
      this.id});

  AllParameters.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    unit = json['unit'].toString();
    metaData = json['metaData'].toString();
    specifications = json['specifications'].toString();
    isActive = json['isActive'].toString();
    processId = json['processId'].toString();
    process = json['process'].toString();
    parameterType = json['parameterType'] != null
        ? ParameterType.fromJson(json['parameterType'])
        : null;
    specs = json['specs'] != null ? Specs.fromJson(json['specs']) : null;
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['unit'] = unit;
    data['metaData'] = metaData;
    data['specifications'] = specifications;
    data['isActive'] = isActive;
    data['processId'] = processId;
    data['process'] = process;
    if (parameterType != null) {
      data['parameterType'] = parameterType!.toJson();
    }
    if (specs != null) {
      data['specs'] = specs!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class ParameterType {
  String? type;
  String? control;
  String? fullName;
  String? id;

  ParameterType({this.type, this.control, this.fullName, this.id});

  ParameterType.fromJson(Map<String, dynamic> json) {
    type = json['type'].toString();
    control = json['control'].toString();
    fullName = json['fullName'].toString();
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['control'] = control;
    data['fullName'] = fullName;
    data['id'] = id;
    return data;
  }
}

class Specs {
  String? minValue;
  String? maxValue;
  String? value;

  Specs({this.minValue, this.maxValue, this.value});

  Specs.fromJson(Map<String, dynamic> json) {
    minValue = json['minValue'].toString();
    maxValue = json['maxValue'].toString();
    value = json['value'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['minValue'] = minValue;
    data['maxValue'] = maxValue;
    data['value'] = value;
    return data;
  }
}
