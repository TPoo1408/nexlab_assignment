import 'package:hive_flutter/hive_flutter.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/utils/preferences/pref_util.dart';

Future<void> initLocalStorage() async {
  await Hive.initFlutter();

  await getIt<PrefUtil>().init();
}