import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  const UserLoaded(this.users);
  final List<UserEntity> users;

  @override
  List<Object> get props => [users];
}

class UserError extends UserState {
  const UserError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
