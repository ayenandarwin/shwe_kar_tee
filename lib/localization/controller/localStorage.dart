import 'package:get_storage/get_storage.dart';

class LocalStorage {
  /// Write
  void saveLanguageToDisk(String langusage) async {
    await GetStorage().write('lang', langusage);
  }

  /// Read
  Future<dynamic> get languageSelected async {
    return await GetStorage().read('lang');
  }
}
