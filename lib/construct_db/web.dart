import 'dart:html';

import 'package:drift/remote.dart';
import 'package:drift/web.dart';
import 'package:drift_safari_demo/database.dart';

Future<MyDatabase> constructDb() async {
  if (await DriftWebStorage.supportsIndexedDb(inWebWorker: true)) {
    final worker = SharedWorker('worker.dart.js');
    final connection = remote(worker.port!.channel());
    return MyDatabase.connect(connection);
  } else {
    return MyDatabase(
      WebDatabase.withStorage(await DriftWebStorage.indexedDbIfSupported('db')),
    );
  }
}
