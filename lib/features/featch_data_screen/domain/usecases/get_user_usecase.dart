import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/repositories/user_repository.dart';

class GetUserUsecase {
  GetUserUsecase({required this.userRepository});
  final UserRepository userRepository;

  Future<List<UserEntity>> call() {
    return userRepository.getUser();
  }
}
