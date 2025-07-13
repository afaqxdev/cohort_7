import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelp {
  static Database? _database;

  /// function database presenet
  Future<Database> get dabase async {
    if (_database != null) {
      return _database!;
    }

    return await initDB();
  }

  /// perenset not then create

  Future<Database> initDB() async {
    String dbPath = await getDatabasesPath();
    String db = join(dbPath, 'db_users');
    return openDatabase(
      db,
      version: 1,

      onCreate: (db, version) {
        return db.execute('''
  CREATE TABLE user(
  id  INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,fatherName TEXT,email TEXT)
''');
      },
    );
  }

  Future<void> insertData(String name, String fatherName, String email) async {
    final db = await dabase;
    await db.insert('user', {
      'name': name,
      'fatherName': fatherName,
      'email': email,
    });
  }

  Future<List<Map<String, dynamic>>> getData() async {
    final db = await dabase;
    return await db.query('user');
  }

  Future<void> deletData(int id) async {
    final db = await dabase;
    await db.delete('user', where: "id= ?", whereArgs: [id]);
  }

  Future<void> updatData(int id, String fName) async {
    final db = await dabase;
    await db.update(
      'user',
      {'fatherName': fName},
      where: "id= ?",
      whereArgs: [id],
    );
  }
}
