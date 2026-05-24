import 'package:frequency_control/frequency_control/config/database/database_helper.dart';
import 'package:frequency_control/frequency_control/models/palestrante.dart';

class PalestranteDao {

  Future<int> insert(Palestrante palestrante) async {

    final db = await DatabaseHelper.instance.database;

    return await db.insert(
      'palestrante', 
      palestrante.toMap(),
    );
  }

  Future<List<Palestrante>> listAll() async {

    final db = await DatabaseHelper.instance.database;

    final table = await db.query('palestrante');

    return table.map((map) {
      return Palestrante.fromMap(map);
    }).toList();
  } 

  Future<int> update(Palestrante palestrante) async {

    final db = await DatabaseHelper.instance.database;

    return await db.update(
      'palestrante',
      palestrante.toMap(),
      where: 'id = ?',
      whereArgs: [palestrante.id],
    );
  }

  Future<int> delete (int id) async {

    final db = await DatabaseHelper.instance.database;

    return await db.delete(
      'palestrante',
      where: 'id =?',
      whereArgs: [id],
    );
  }
}