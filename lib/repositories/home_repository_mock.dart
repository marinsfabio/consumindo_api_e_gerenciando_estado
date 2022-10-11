import 'dart:convert';

import 'package:consumindo_api_e_erenciando_estado/models/post_model.dart';
import 'package:flutter/services.dart';

import 'home_repostory.dart';

class HomeMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
