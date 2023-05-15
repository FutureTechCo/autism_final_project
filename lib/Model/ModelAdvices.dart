class ModelAdvice{
  late int results,page;
  late List<DataModelAdvice> data;

  @override
  String toString() {
    return 'ModelAdvice{results: $results, page: $page, data: $data}';
  }

  ModelAdvice();
  ModelAdvice.fromJs(Map<String,dynamic>map){
    this.results = map['results'];
    this.page = map['page'];
    if(map['data'] != null){
      data = <DataModelAdvice>[];
      map['data'].forEach((element) {
        data.add(DataModelAdvice.fromJs(element));
      });
    }
  }
}
class DataModelAdvice{
  late String id,titel,advice,createdAt,updatedAt;
  late int v;

  @override
  String toString() {
    return 'DataModelAdvice{id: $id, titel: $titel, advice: $advice, createdAt: $createdAt, updatedAt: $updatedAt, v: $v}';
  }

  DataModelAdvice();
  DataModelAdvice.fromJs(Map<String,dynamic>map){
    this.id = map['_id'];
    this.titel = map['titel'];
    this.advice = map['advice'];
    this.createdAt = map['createdAt'];
    this.updatedAt = map['updatedAt'];
    this.v = map['__v'];
  }
}