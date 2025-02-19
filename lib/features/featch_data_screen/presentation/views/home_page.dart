import 'package:clean_architecture_task/features/featch_data_screen/presentation/cubit/user_cubit.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/cubit/user_states.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        centerTitle: true,
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          if (state is UserInitial) {
            return const Center(
              child: Text('Press the button to load users'),
            );
          } else if (state is UserLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is UserLoaded) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: ListView.builder(
                itemCount: state.users.length,
                itemBuilder: (context, index) {
                  final user = state.users[index];
                  return CustomContainer(user: user);
                },
              ),
            );
          } else if (state is UserError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<UserCubit>().fetchUsers(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
