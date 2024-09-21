import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/di/injection.dart';
import 'package:nexlab_assignment/configs/local/local_storage.dart';
import 'package:nexlab_assignment/features/app/app.dart';


// flutter pub run build_runner build --delete-conflicting-outputs
Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await initLocalStorage();

  runApp(const MyApp());
}
