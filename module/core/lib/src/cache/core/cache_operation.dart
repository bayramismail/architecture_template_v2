// ignore_for_file: public_member_api_docs

import 'package:core/src/cache/core/cache_model.dart';

abstract class CacheOperation<T extends CacheModel> {
  void add(T item);
  void addList(List<T> items);
  void remove(String id);
  void clear();

  List<T> getAll();
  T? get(String id);
}
