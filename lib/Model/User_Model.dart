class user {
  Data? data;
  String? token;

  user({this.data, this.token});

  user.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class Data {
  String? name;
  String? email;
  String? profileImg;
  List<String>? doctorappointments;
  List<String>? ratings;
  String? password;
  String? role;
  bool? active;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.name,
        this.email,
        this.doctorappointments,
        this.ratings,
        this.password,
        this.role,
        this.profileImg,
        this.active,
        this.sId,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    profileImg = json['profileImg'];
    if (json['Doctorappointments'] != null) {
      doctorappointments = <String>[];
      json['Doctorappointments'].forEach((v) {
        doctorappointments!.add(v);
      });
    }
    if (json['Ratings'] != null) {
      ratings = <String>[];
      json['Ratings'].forEach((v) {
        ratings!.add(v);
      });
    }
    password = json['password'];
    role = json['role'];
    active = json['active'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, String> toJson() {
    final Map<String, String> data = new Map<String, String>();
    data['name'] = this.name!;
    data['email'] = this.email!;
    if (this.doctorappointments != null) {
      data['Doctorappointments'] =
          this.doctorappointments!.map((String v) => v) .toList()as String;
    }
    if (this.ratings != null) {
      data['Ratings'] = this.ratings!.map((String v) => v).toList()as String;
    }
    data['password'] = this.password!;
    data['role'] = this.role!;
    data['profileImg']=this.profileImg!;
    data['active'] = '${ this.active!}';
    data['_id'] = this.sId!;
    data['createdAt'] = this.createdAt!;
    data['updatedAt'] = this.updatedAt!;
    data['__v'] = '${this.iV! }';
    return data;
  }
}