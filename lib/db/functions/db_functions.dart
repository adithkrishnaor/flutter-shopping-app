import 'package:sqflite/sqflite.dart';

late Database _db;

Future<void> initDatabase() async {
  _db = await openDatabase(
    "shopuser",
    version: 1,
    onCreate: (Database db,int version) async {
      await db.execute(
        'CREATE TABLE userdet (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT,dob TEXT,password TEXT,cpassword TEXT)'
      );
    },
  );
}

Future<int> addUser(String name,String email,String dob, String password,String cpassword) async {
  final adduser = await _db.rawInsert(
      'INSERT INTO userdet (name,email,dob,password,cpassword) VALUES(?,?,?,?,?)',
      [name,email,dob,password,cpassword]);
  return adduser;
}

Future<List> getUser() async {
  final _usrdetails = await _db.rawQuery('SELECT * FROM userdet');
  print(_usrdetails);
  return _usrdetails;
}

Future<bool> checkUser(String email, String password) async {
  final _user = await _db.rawQuery('SELECT * FROM userdet WHERE email = ? AND password = ?', [email, password]);
  return _user.isNotEmpty;
}