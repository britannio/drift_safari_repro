import 'package:drift/web.dart';
import 'package:drift_safari_demo/database.dart';

Future<MyDatabase> constructDb() async {
  return MyDatabase(
    WebDatabase.withStorage(await DriftWebStorage.indexedDbIfSupported('db')),
  );
}
