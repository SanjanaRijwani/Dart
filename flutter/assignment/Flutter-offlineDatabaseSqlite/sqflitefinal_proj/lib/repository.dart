import 'package:sqflite/sqflite.dart';
import 'connection.dart';

class Repository {
  late Databaseconnection _databaseconnection;

  Repository() {
    _databaseconnection = Databaseconnection();
  }

  static Database? _database;

  Future<Database?> get mydatabase async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseconnection.setDatabase();
      return _database;
    }
  }

  insertdata(tablename, data) async {
    var con = await mydatabase;
    return await con?.insert(tablename, data);
  }

  readalldata(tablename) async {
    var con = await mydatabase;
    return await con?.query(tablename);
  }

  updatedata(tablename, itemid) async {
    var con = await mydatabase;
    return con
        ?.update(tablename, itemid, where: "id=?", whereArgs: [itemid["id"]]);
  }

  deleteData(tablename, itemid) async {
    var con = await mydatabase;

    return con?.rawDelete("delete from $tablename where id = $itemid");
  }
}
