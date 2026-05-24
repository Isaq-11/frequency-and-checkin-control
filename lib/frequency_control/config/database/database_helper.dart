import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {

  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {

    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('frequency_control.db');

    return _database!;
  }

  Future<Database> _initDB(String filePath) async {

    final dbPath = await getDatabasesPath();

    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {

    await db.execute('''
      CREATE TABLE participante(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        ra TEXT NOT NULL,
        curso TEXT NOT NULL,
        periodo INTEGER NOT NULL,
      )
    ''');

    await db.execute('''
      CREATE TABLE palestrante(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        formacao TEXT NOT NULL,
      )
    ''');

    await db.execute('''
      CREATE TABLE sessao(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        titulo TEXT NOT NULL,
        descricao TEXT NOT NULL,
        local TEXT NOT NULL,
        capacidadePublico INTEGER NOT NULL,
        horaInicio DATETIME, 
        horaTermino DATETIME,
      )
    ''');

    await db.execute('''
      CREATE TABLE paricipante_sessao(
        id INTEGER PRIMARY KEY AUTOINCREMENT,

        participante_id INTEGER NOT NULL,
        sessao_id INTEGER NOT NULL,

        FOREIGN KEY (participante_id) REFERENCES participante(id),
        FOREIGN KEY (sessao_id) REFERENCES sessao(id),
      )
    ''');

    await db.execute('''
      CREATE TABLE palestrante_sessao(
        id INTEGER PRIMARY KEY AUTOINCREMENT,

        palestrante_id INTEGER NOT NULL,
        sessao_id INTEGER NOT NULL,

        FOREIGN KEY (palestrante_id) REFERENCES palestrante(id),
        FOREIGN KEY (sessao_id) REFERENCES sessao(id),
      )
    ''');
  }
}