import 'package:clean_architecture_task/features/featch_data_screen/data/data_sources/remote_data_source.dart';
import 'package:clean_architecture_task/features/featch_data_screen/data/repositories/user_repository_impl.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/repositories/user_repository.dart';
import 'package:clean_architecture_task/features/featch_data_screen/domain/usecases/get_user_usecase.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/cubit/user_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initUsersDependecies() {
  // Cubit
  sl
    ..registerFactory(() => UserCubit(getUserUsecase: sl()))

    // Use case
    ..registerLazySingleton(() => GetUserUsecase(userRepository: sl()))

    // Data source
    ..registerLazySingleton<UserRemoteDataSource>(
      // ignore: unnecessary_lambdas
      () => UserRemoteDataSourceImpl(),
    )

    // Repository
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: sl()),
    );
}
