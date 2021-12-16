class LoginModel {
  LoginData? data;
  String? code;
  String? message;

  LoginModel({this.data, this.code, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? LoginData.fromJson(json['data']) : null;
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

class LoginData {
  User? user;
  String? token;
  List<Menu>? menu;

  LoginData({this.user, this.token, this.menu});

  LoginData.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
    if (json['menu'] != null) {
      menu = <Menu>[];
      json['menu'].forEach((v) {
        menu!.add(Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    if (menu != null) {
      data['menu'] = menu!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  String? name;
  String? joinedDate;
  String? id;
  String? userName;
  String? normalizedUserName;
  String? email;
  String? normalizedEmail;
  String? emailConfirmed;
  String? passwordHash;
  String? securityStamp;
  String? concurrencyStamp;
  String? phoneNumber;
  String? phoneNumberConfirmed;
  String? twoFactorEnabled;
  String? lockoutEnd;
  String? lockoutEnabled;
  String? accessFailedCount;

  User(
      {this.name,
      this.joinedDate,
      this.id,
      this.userName,
      this.normalizedUserName,
      this.email,
      this.normalizedEmail,
      this.emailConfirmed,
      this.passwordHash,
      this.securityStamp,
      this.concurrencyStamp,
      this.phoneNumber,
      this.phoneNumberConfirmed,
      this.twoFactorEnabled,
      this.lockoutEnd,
      this.lockoutEnabled,
      this.accessFailedCount});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    joinedDate = json['joinedDate'].toString();
    id = json['id'].toString();
    userName = json['userName'].toString();
    normalizedUserName = json['normalizedUserName'].toString();
    email = json['email'].toString();
    normalizedEmail = json['normalizedEmail'].toString();
    emailConfirmed = json['emailConfirmed'].toString();
    passwordHash = json['passwordHash'].toString();
    securityStamp = json['securityStamp'].toString();
    concurrencyStamp = json['concurrencyStamp'].toString();
    phoneNumber = json['phoneNumber'].toString().toString();
    phoneNumberConfirmed = json['phoneNumberConfirmed'].toString();
    twoFactorEnabled = json['twoFactorEnabled'].toString();
    lockoutEnd = json['lockoutEnd'].toString();
    lockoutEnabled = json['lockoutEnabled'].toString();
    accessFailedCount = json['accessFailedCount'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['joinedDate'] = joinedDate;
    data['id'] = id;
    data['userName'] = userName;
    data['normalizedUserName'] = normalizedUserName;
    data['email'] = email;
    data['normalizedEmail'] = normalizedEmail;
    data['emailConfirmed'] = emailConfirmed;
    data['passwordHash'] = passwordHash;
    data['securityStamp'] = securityStamp;
    data['concurrencyStamp'] = concurrencyStamp;
    data['phoneNumber'] = phoneNumber;
    data['phoneNumberConfirmed'] = phoneNumberConfirmed;
    data['twoFactorEnabled'] = twoFactorEnabled;
    data['lockoutEnd'] = lockoutEnd;
    data['lockoutEnabled'] = lockoutEnabled;
    data['accessFailedCount'] = accessFailedCount;
    return data;
  }
}

class Menu {
  String? name;
  String? url;
  String? icon;
  String? target;
  List<SubMenu>? subMenu;
  String? id;

  Menu({this.name, this.url, this.icon, this.target, this.subMenu, this.id});

  Menu.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    url = json['url'].toString();
    icon = json['icon'].toString();
    target = json['target'].toString();
    if (json['subMenu'] != null) {
      subMenu = <SubMenu>[];
      json['subMenu'].forEach((v) {
        subMenu!.add(SubMenu.fromJson(v));
      });
    }
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['icon'] = icon;
    data['target'] = target;
    if (subMenu != null) {
      data['subMenu'] = subMenu!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    return data;
  }
}

class SubMenu {
  String? name;
  String? url;
  String? icon;
  String? target;
  String? mainMenuId;
  String? id;

  SubMenu(
      {this.name, this.url, this.icon, this.target, this.mainMenuId, this.id});

  SubMenu.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    url = json['url'].toString();
    icon = json['icon'].toString();
    target = json['target'].toString();
    mainMenuId = json['mainMenuId'].toString();
    id = json['id'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['icon'] = icon;
    data['target'] = target;
    data['mainMenuId'] = mainMenuId;
    data['id'] = id;
    return data;
  }
}
