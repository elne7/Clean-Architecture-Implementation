import 'package:clean_architecture_task/features/featch_data_screen/dependancy_injection.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/cubit/user_cubit.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/views/home_page.dart';
import 'package:clean_architecture_task/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    initUsersDependecies();
    
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (context) => GetIt.I<UserCubit>(),
        child: const HomePage(),
      ),
    );
  }
}
