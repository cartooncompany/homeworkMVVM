import 'package:flutter/material.dart';
import 'package:qintproject/dataSource/data_source.dart';

import '../model/question.dart';

class QuestionRepository with ChangeNotifier {
  final DataSource _dataSource = DataSource();

  Future<List<Questions>> getQuestionList(){
    return _dataSource.getQuestionList();
  }
}