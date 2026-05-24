import 'package:frequency_control/frequency_control/config/database/database_helper.dart';
import 'package:frequency_control/frequency_control/models/sessao.dart';

class SessaoDao{

  Future<int> insert(Sessao sessao) async {

    final db = await DatabaseHelper.instance.database;

    return db.insert(
      'sessao',
      sessao.toMap(),
    );
  }

  Future<List<Sessao>> listAll() async {

    final db = await DatabaseHelper.instance.database;

    final table = await db.query('sessao');

    return table.map((map) {
      return Sessao.fromMap(map);
    }).toList();
  }

  Future<int> update(Sessao sessao) async {

    final db = await DatabaseHelper.instance.database;

    return await db.update(
      'sessao',
      sessao.toMap(),
      where: 'id = ?',
      whereArgs: [sessao.id],
    );
  }

  Future<int> delete(int id) async {

    final db = await DatabaseHelper.instance.database;

    return await db.delete(
      'sessao',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}