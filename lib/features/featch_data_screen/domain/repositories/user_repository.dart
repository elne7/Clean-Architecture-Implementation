import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';

// ignore: one_member_abstracts
abstract class UserRepository{
  Future<List<UserEntity>> getUser();
}
