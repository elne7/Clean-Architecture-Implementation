import 'package:clean_architecture_task/features/featch_data_screen/data/models/user_model.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';

// ignore: one_member_abstracts
abstract class UserRemoteDataSource {
  Future<List<UserEntity>> getUsers();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  @override
  Future<List<UserEntity>> getUsers() async {
    return UserModel.fromStaticData();
  }
}
