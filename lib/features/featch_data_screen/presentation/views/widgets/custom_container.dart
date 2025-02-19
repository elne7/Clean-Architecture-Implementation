import 'package:clean_architecture_task/features/featch_data_screen/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({required this.user, super.key});

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text('Name: ${user.firstName} ${user.lastName}'),
          Text('Phone: ${user.phone}'),
          Text('Age: ${user.age}'),
          Text('Email: ${user.email}'),
        ],
      ),
    );
  }
}
