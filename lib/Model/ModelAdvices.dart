class ModelAdvice {
  int? results;
  int? page;
  List<DataAdices>? data;

  ModelAdvice();

  ModelAdvice.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    page = json['page'];
    if (json['data'] != null) {
      data = <DataAdices>[];
      json['data'].forEach((v) {
        data!.add(new DataAdices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    data['page'] = this.page;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataAdices {
  String? sId;
  String? titel;
  String? createdAt;
  String? updatedAt;
  int? iV;
  List<Adices>? adices;

  DataAdices();

  DataAdices.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    titel = json['titel'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    if (json['Adices'] != null) {
      adices = <Adices>[];
      json['Adices'].forEach((v) {
        adices!.add(new Adices.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['titel'] = this.titel;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    if (this.adices != null) {
      data['Adices'] = this.adices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Adices {
  String? adice;
  String? titel;
  String? sId;

  Adices();

  Adices.fromJson(Map<String, dynamic> json) {
    adice = json['Adice'];
    titel = json['titel'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Adice'] = this.adice;
    data['titel'] = this.titel;
    data['_id'] = this.sId;
    return data;
  }
}
