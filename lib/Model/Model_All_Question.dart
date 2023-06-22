class AllQuestion {
  int? results;
  PaginationResult? paginationResult;
  List<Questions>? data;

  AllQuestion();

  AllQuestion.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    paginationResult = json['paginationResult'] != null
        ? new PaginationResult.fromJson(json['paginationResult'])
        : null;
    if (json['data'] != null) {
      data = <Questions>[];
      json['data'].forEach((v) {
        data!.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    if (this.paginationResult != null) {
      data['paginationResult'] = this.paginationResult!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaginationResult {
  int? currentPage;
  int? limit;
  int? numberOfPages;

  PaginationResult({this.currentPage, this.limit, this.numberOfPages});

  PaginationResult.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    limit = json['limit'];
    numberOfPages = json['numberOfPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currentPage'] = this.currentPage;
    data['limit'] = this.limit;
    data['numberOfPages'] = this.numberOfPages;
    return data;
  }
}

class Questions {
  String? sId;
  String? typeQuestion;
  String? questionText;
  String? questionChoices1;
  int? questionChoicesEvaluation1;
  String? questionChoices2;
  int? questionChoicesEvaluation2;
  String? questionChoices3;
  int? questionChoicesEvaluation3;
  String? questionChoices4;
  int? questionChoicesEvaluation4;
  String? answer;
  int? answerEvaluation;
  String? test;
  String? createdAt;
  String? updatedAt;

  Questions(
      {this.sId,
        this.typeQuestion,
        this.questionText,
        this.questionChoices1,
        this.questionChoicesEvaluation1,
        this.questionChoices2,
        this.questionChoicesEvaluation2,
        this.questionChoices3,
        this.questionChoicesEvaluation3,
        this.questionChoices4,
        this.questionChoicesEvaluation4,
        this.answer,
        this.answerEvaluation,
        this.test,
        this.createdAt,
        this.updatedAt});

  Questions.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    typeQuestion = json['typeQuestion'];
    questionText = json['QuestionText'];
    questionChoices1 = json['QuestionChoices1'];
    questionChoicesEvaluation1 = json['QuestionChoicesEvaluation1'];
    questionChoices2 = json['QuestionChoices2'];
    questionChoicesEvaluation2 = json['QuestionChoicesEvaluation2'];
    questionChoices3 = json['QuestionChoices3'];
    questionChoicesEvaluation3 = json['QuestionChoicesEvaluation3'];
    questionChoices4 = json['QuestionChoices4'];
    questionChoicesEvaluation4 = json['QuestionChoicesEvaluation4'];
    answer = json['Answer'];
    answerEvaluation = json['AnswerEvaluation'];
    test = json['Test'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['typeQuestion'] = this.typeQuestion;
    data['QuestionText'] = this.questionText;
    data['QuestionChoices1'] = this.questionChoices1;
    data['QuestionChoicesEvaluation1'] = this.questionChoicesEvaluation1;
    data['QuestionChoices2'] = this.questionChoices2;
    data['QuestionChoicesEvaluation2'] = this.questionChoicesEvaluation2;
    data['QuestionChoices3'] = this.questionChoices3;
    data['QuestionChoicesEvaluation3'] = this.questionChoicesEvaluation3;
    data['QuestionChoices4'] = this.questionChoices4;
    data['QuestionChoicesEvaluation4'] = this.questionChoicesEvaluation4;
    data['Answer'] = this.answer;
    data['AnswerEvaluation'] = this.answerEvaluation;
    data['Test'] = this.test;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
