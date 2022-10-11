import 'package:consumindo_api_e_erenciando_estado/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
