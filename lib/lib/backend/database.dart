import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class localDB {
  String dBname = "ced";

  Future<Database> ConnectDB() async {
    var directory = await getApplicationDocumentsDirectory();
    print(directory);
    dynamic location = join(directory.path, this.dBname);
    print(location);

    var cDB = databaseFactoryIo;
    var dB = await cDB.openDatabase(location);
    print(dB);

    return dB;
  }

  Future<void> REG(name, surname, email, password) async {
    print("$name $surname $email $password");

    var dB = await this.ConnectDB();
    var store = intMapStoreFactory.store('user');

    var data = await store.add(dB, {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
      'phone': "0649521234"
    }).then((value) {
      print('$value sus');
    }).catchError((error) {
      print(error);
    });

    var user = await store.find(dB);
    print(user);

    dB.close();
    //print(data);
  }

  Future<bool> Login(email, password) async {
    var db = await this.ConnectDB();
    var store = intMapStoreFactory.store('user');

    var user = await store.find(db);
    //print(user);

    for (var item in user) {
      if (item['email'] == email && item['password'] == password) {
        print('sus');
        return true;
      }
    }
    return false;
  }
}
