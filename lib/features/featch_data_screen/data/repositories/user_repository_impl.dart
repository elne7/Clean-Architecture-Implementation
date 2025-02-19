import 'package:clean_architecture_task/features/featch_data_screen/data/data_sources/remote_data_source.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository{
  UserRepositoryImpl({required this.remoteDataSource});

  final UserRemoteDataSource remoteDataSource;
  @override
  Future<List<UserEntity>> getUser() {
    return remoteDataSource.getUsers();
  }
}
