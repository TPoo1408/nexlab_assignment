import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PrefUtil {
  late Box _box;
  final _tableName = "shared_preferences";

  Future<void> init() async {
    _box = await Hive.openBox(_tableName);
  }
}
