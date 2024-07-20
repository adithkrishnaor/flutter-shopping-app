import 'package:sqflite/sqflite.dart';

late Database _db;

Future<void> initDatabase() async {
  _db = await openDatabase(
    "shopuser",
    version: 1,
    onCreate: (Database db,int version) async {
      await db.execute(
        'CREATE TABLE shopuser (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT,dob TEXT,password TEXT,cpassword TEXT)'
      );
    },
  );
}

Future<int> addUser(String name,String email,String dob, String password,String cpassword) async {
  final adduser = await _db.rawInsert(
      'INSERT INTO shopuser(name,email,dob,password,cpassword) VALUES(?,?,?,?)',
      [name,email,dob,password,cpassword]);
  return adduser;
}