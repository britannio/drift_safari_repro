import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_safari_demo/database.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

Future<MyDatabase> constructDb() async {
  final db = LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
  return MyDatabase(db);
}
