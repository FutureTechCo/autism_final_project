class ModelPosts {
  late int results;
  late int page;
  late List<Posts> posts;

  ModelPosts();

  ModelPosts.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    page = json['page'];
    if (json['data'] != null) {
      posts = <Posts>[];
      json['data'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    data['page'] = this.page;
    if (this.posts != null) {
      data['data'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  late String sId;
  late String text;
  late int views;
  late int like;
  late int comment;
  late List<String> images;
  late User user;
  late String createdAt;
  late String updatedAt;
  late int iV;

  Posts();

  Posts.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    text = json['text'];
    views = json['views'];
    like = json['Like'];
    comment = json['comment'];
    images = json['images'].cast<String>();
    user = User.fromJson(json['user']);
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
