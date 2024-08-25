import 'package:flutter/cupertino.dart';
import 'package:qintproject/repository/question_repository.dart';

import '../model/question.dart';

class QuestionViewModel with ChangeNotifier {
  final QuestionRepository _questionRepository = QuestionRepository();

  List<Questions> _questionList = List.empty(growable: true);
  List<Questions> get questionList => _questionList;

  QuestionViewModel(){
    _getQuestionList();
  }

  Future<void> _getQuestionList() async {
    _questionList = await _questionRepository.getQuestionList();
    notifyListeners();
  }
}