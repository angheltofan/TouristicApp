import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Future<Database> _openDB() async {
    return openDatabase(
      join(await getDatabasesPath(), 'TrakkerDB.db'),
    );
  }

  static Future<List<Map<String, dynamic>>> getPages() async {
    final db = await _openDB();
    return await db.query('pages');
  }
}
