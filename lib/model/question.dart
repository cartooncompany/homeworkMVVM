class Questions {
  final List<Model> questions;

  Questions({
    required this.questions,
  });

  factory Questions.fromJson(Map<String, dynamic> json) {
    return Questions(
      questions: List<Model>.from(
        json['questions'].map(
          (i) => Model.fromJson(i),
        ),
      ),
    );
  }
}

class Model {
  final int questionid;
  final String contents;
  final List<Option> options;

  const Model({
    required this.questionid,
    required this.contents,
    required this.options,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      questionid: json['question_id'],
      contents: json['contents'],
      options: json['options'].map<Option>((i) => Option.fromJson(i)).toList(),
    );
  }
}

class Option {
  final int answerId;
  final String text;

  const Option({
    required this.answerId,
    required this.text,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      answerId: json['answer_id'],
      text: json['text'],
    );
  }
}
