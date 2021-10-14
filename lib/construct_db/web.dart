import 'package:drift/web.dart';
import 'package:drift_safari_demo/database.dart';

MyDatabase constructDb() {
  return MyDatabase(WebDatabase('db'));
}
