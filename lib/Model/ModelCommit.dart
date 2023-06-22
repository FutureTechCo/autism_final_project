class ModelComment {
  Data? data;
  List<Comments>? comments;

  ModelComment({this.data, this.comments});

  ModelComment.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? text;
  int? views;
  int? like;
  int? comment;
  List<String>? images;
  User? user;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
        this.text,
        this.views,
        this.like,
        this.comment,
        this.images,
        this.user,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    text = json['text'];
    views = json['views'];
    like = json['Like'];
    comment = json['comment'];
    images = json['images'].cast<String>();
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['text'] = this.text;
    data['views'] = this.views;
    data['Like'] = this.like;
    data['comment'] = this.comment;
    data['images'] = this.images;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class User {
  late String sId;
  late String name;
  late String email;
  late String password;
  late String role;
  late bool? active;
  late String? createdAt;
  late String? updatedAt;
  late int? iV;

  User();

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    active = json['active'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    data['active'] = this.active;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class Comments {
  String? sId;
  String? text;
  int? views;
  int? like;
  String? post;
  User? user;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Comments(
      {this.sId,
        this.text,
        this.views,
        this.like,
        this.post,
        this.user,
        this.createdAt,
        this.updatedAt,
        this.iV});

  Comments.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    text = json['text'];
    views = json['views'];
    like = json['Like'];
    post = json['Post'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['text'] = this.text;
    data['views'] = this.views;
    data['Like'] = this.like;
    data['Post'] = this.post;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
