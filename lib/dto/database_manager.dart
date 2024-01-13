import 'profile_data.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

//part 'database_manager.g.dart';

class DatabaseManager {
  static late Box<ProfileData> profileDataBox;

  DatabaseManager._privateConstructor();

  static DatabaseManager? _instance;

  static Future<void> init() async {
    if (_instance == null) {
      _instance = DatabaseManager._privateConstructor();
      await _instance!._initHive();
    }
  }

  Future<void> _initHive() async {
    final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(ProfileDataAdapter());
    profileDataBox = await Hive.openBox<ProfileData>('profile_data');
  }

  static DatabaseManager get instance {
    return _instance!;
  }

  // Methods for saving data
  static void saveProfileData(ProfileData profileData) {
    profileDataBox.add(profileData);
  }

  // Methods for retrieving data
  static ProfileData? getProfileData() {
    return profileDataBox.isNotEmpty ? profileDataBox.values.first : null;
  }
}
