import 'package:frequency_control/frequency_control/config/database/database_helper.dart';
import 'package:frequency_control/frequency_control/models/participante.dart';

class ParticipanteDao {

  Future<int> insert(Participante participante) async {

    final db = await DatabaseHelper.instance.database;

    return await db.insert(
      'participante',
      participante.toMap()
    );
  }

  Future<List<Participante>> findAll() async{

    final db = await DatabaseHelper.instance.database;

    final table = await db.query('participante');

    return table.map((map) {
      return Participante.fromMap(map);
    }).toList();
  }

  Future<int> update(Participante participante) async {

    final db = await DatabaseHelper.instance.database;

    return await db.update(
      'participante',
      participante.toMap(),
      where: 'id = ?',
      whereArgs: [participante.id],
    );
  }

  Future<int> delete(int id) async{
    final db = await DatabaseHelper.instance.database;

    return await db.delete(
      'participante',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}