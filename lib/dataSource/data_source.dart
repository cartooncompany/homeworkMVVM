import 'dart:convert';

import '../model/question.dart';
import 'package:http/http.dart' as http;

class DataSource{
  Questions? _questions;
  Questions? get questions => _questions;

  Future<List<Questions>> getQuestionList() async {
    var url = Uri.parse('');
    var response = await http.get(url);
    // return jsonDecode(response.body).map<Questions>((json) => Questions.fromJson(json));
    switch(response.statusCode) {
      case 200:
        final jsonData = jsonDecode(response.body);
        _questions = jsonDecode(response.body);
        return jsonData;
      case 401:
        throw Exception("로그인이 필요한 기능입니다.");
      case 404:
        throw Exception("요청한 문제를 찾을 수 없습니다.");
      default:
        throw Exception();
    }
  }
}