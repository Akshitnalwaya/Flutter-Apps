import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:expense_tracker/models/expense.model.dart';
import 'package:flutter/material.dart';

class DatabaseHelper {
  static const _databaseName = "expense_tracker.db";
  static const _databaseVersion = 1;

  static const table = 'expenses';
  static const columnId = 'id';
  static const columnTitle = 'title';
  static const columnAmount = 'amount';
  static const columnDate = 'date';
  static const columnCategory = 'category';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId TEXT PRIMARY KEY,
            $columnTitle TEXT NOT NULL,
            $columnAmount REAL NOT NULL,
            $columnDate TEXT NOT NULL,
            $columnCategory TEXT NOT NULL
          )
          ''');
  }

  Future<int> insert(Expense expense) async {
    Database db = await instance.database;
    return await db.insert(table, expense.toMap());
  }

  Future<List<Expense>> queryAllRows() async {
    Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(table);
    
    return List.generate(maps.length, (i) {
      return Expense.fromMap(maps[i]);
    });
  }

  Future<int> delete(String id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}
