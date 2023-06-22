class Question {
  String? typeQuestion;
  String? questionText;
  String? questionChoices1;
  String? answer;
  String? test;
  String? answerEvaluation;
  String? questionChoicesEvaluation1;
  String? questionChoices2;
  String? questionChoicesEvaluation2;
  String? questionChoices3;
  String? questionChoicesEvaluation3;
  String? questionChoices4;
  String? questionChoicesEvaluation4;

  Question(
      {this.typeQuestion,
        this.questionText,
        this.questionChoices1,
        this.answer,
        this.test,
        this.answerEvaluation,
        this.questionChoicesEvaluation1,
        this.questionChoices2,
        this.questionChoicesEvaluation2,
        this.questionChoices3,
        this.questionChoicesEvaluation3,
        this.questionChoices4,
        this.questionChoicesEvaluation4});

  Question.fromJson(Map<String, dynamic> json) {
    typeQuestion = json['typeQuestion'];
    questionText = json['QuestionText'];
    questionChoices1 = json['QuestionChoices1'];
    answer = json['Answer'];
    test = json['Test'];
    answerEvaluation = json['AnswerEvaluation'];
    questionChoicesEvaluation1 = json['QuestionChoicesEvaluation1'];
    questionChoices2 = json['QuestionChoices2'];
    questionChoicesEvaluation2 = json['QuestionChoicesEvaluation2'];
    questionChoices3 = json['QuestionChoices3'];
    questionChoicesEvaluation3 = json['QuestionChoicesEvaluation3'];
    questionChoices4 = json['QuestionChoices4'];
    questionChoicesEvaluation4 = json['QuestionChoicesEvaluation4'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['typeQuestion'] = this.typeQuestion;
    data['QuestionText'] = this.questionText;
    data['QuestionChoices1'] = this.questionChoices1;
    data['Answer'] = this.answer;
    data['Test'] = this.test;
    data['AnswerEvaluation'] = this.answerEvaluation;
    data['QuestionChoicesEvaluation1'] = this.questionChoicesEvaluation1;
    data['QuestionChoices2'] = this.questionChoices2;
    data['QuestionChoicesEvaluation2'] = this.questionChoicesEvaluation2;
    data['QuestionChoices3'] = this.questionChoices3;
    data['QuestionChoicesEvaluation3'] = this.questionChoicesEvaluation3;
    data['QuestionChoices4'] = this.questionChoices4;
    data['QuestionChoicesEvaluation4'] = this.questionChoicesEvaluation4;
    return data;
  }
}
