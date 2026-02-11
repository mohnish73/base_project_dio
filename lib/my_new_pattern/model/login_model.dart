class MobileLoginModel {
  Data? data;
  String? message;
  int? status;

  MobileLoginModel({this.data, this.message, this.status});

  MobileLoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? token;
  String? name;
  String? userId;
  String? userType;
  String? adminUserId;
  String? customerId;
  bool? tempPassword;

  Data(
      {this.token,
        this.name,
        this.userId,
        this.userType,
        this.adminUserId,
        this.customerId,
        this.tempPassword});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    name = json['name'];
    userId = json['userId'];
    userType = json['userType'];
    adminUserId = json['adminUserId'];
    customerId = json['customerId'];
    tempPassword = json['tempPassword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['name'] = this.name;
    data['userId'] = this.userId;
    data['userType'] = this.userType;
    data['adminUserId'] = this.adminUserId;
    data['customerId'] = this.customerId;
    data['tempPassword'] = this.tempPassword;
    return data;
  }
}
