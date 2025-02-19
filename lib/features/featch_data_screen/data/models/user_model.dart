import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.phone,
    required super.age,
  });

  static List<UserModel> fromStaticData() {
    return [
      UserModel(
        firstName: 'Ahmed',
        lastName: 'Elnahrawy',
        email: 'ahmed@gmail.com',
        phone: '01234567898',
        age: 22,
      ),
      UserModel(
        firstName: 'Ali',
        lastName: 'Elgharbawy',
        email: 'ali@gmail.com',
        phone: '01546456346',
        age: 23,
      ),
      UserModel(
        firstName: 'Mohamed',
        lastName: 'Elrawy',
        email: 'mohamed@gmail.com',
        phone: '01068451868',
        age: 24,
      ),
      UserModel(
        firstName: 'Amr',
        lastName: 'Tabana',
        email: 'amr@gmail.com',
        phone: '01098465465',
        age: 18,
      ),
      UserModel(
        firstName: 'Omar',
        lastName: 'Marmosh',
        email: 'omar@gmail.com',
        phone: '01287564235',
        age: 27,
      ),
    ];
  }
}
