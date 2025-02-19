import 'package:bloc/bloc.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/usecases/get_user_usecase.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/cubit/user_states.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required this.getUserUsecase}) : super(UserInitial());
  
  final GetUserUsecase getUserUsecase;

  Future<void> fetchUsers() async {
    emit(UserLoading());
    try {
      final users = await getUserUsecase();
      emit(UserLoaded(users));
    } catch (e) {
      emit(UserError(e.toString()));
    }
  }
}
