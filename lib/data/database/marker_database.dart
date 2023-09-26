// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// class MarkerDatabase {
//   Database? _database;
//
//   Future<void> initDatabase() async {
//     final databasesPath = await getDatabasesPath();
//     final path = join(databasesPath, 'markers.db');
//
//     _database = await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) {
//         // 데이터베이스 초기화 코드
//         db.execute('''
//           CREATE TABLE markers (
//             id INTEGER PRIMARY KEY,
//             markerId TEXT,
//             latitude REAL,
//             longitude REAL,
//             imageUrl TEXT,
//             smallSizeCount INTEGER,
//             mediumSizeCount INTEGER,
//             largeSizeCount INTEGER
//           )
//         ''');
//       },
//     );
//   }
//
//   Future<void> insertMarker(MarkerModel marker) async {
//     await _database?.insert('markers', marker.toMap());
//   }
//
//   Future<List<MarkerModel>> getMarkers() async {
//     final List<Map<String, Object?>>? maps = await _database?.query('markers');
//     return List.generate(maps!.length, (i) {
//       return MarkerModel.fromMap(maps[i]);
//     });
//   }
// }
