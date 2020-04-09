/* import 'package:path_provider/path_provider.dart';
import 'dart:io'; */

enum Ut { admin, user }

class UP {
 /*  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/uid.txt');
  }
 */
  static var uID = {"admin": "123", "user": "321"};
  static var uType = {"admin": Ut.admin, "user": Ut.user};
  static var temp = 0;
}
