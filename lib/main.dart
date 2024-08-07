import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:finance_tracker/app.dart';
import 'package:finance_tracker/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:finance_tracker/core/env/dotenv_setup.dart';
import 'package:finance_tracker/features/ai_automation/presentation/bloc/ai_bloc.dart';
import 'package:finance_tracker/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:finance_tracker/features/currency_conversion/presentation/bloc/currency_bloc.dart';

import 'package:finance_tracker/features/finance/presentation/bloc/transaction_bloc.dart';
import 'package:finance_tracker/features/finance_blog/presentation/bloc/blog_bloc.dart';

import 'package:finance_tracker/features/security/presentation/bloc/biometric_bloc.dart';
import 'package:finance_tracker/features/settings/presentation/bloc/reset_bloc.dart';
import 'package:finance_tracker/features/settings/presentation/bloc/theme_bloc.dart';
import 'package:finance_tracker/init_dependecies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure that Flutter bindings are initialized

  await loadEnv();
  await initDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator<AppUserCubit>()),
        BlocProvider(create: (_) => serviceLocator<AuthBloc>()),
        BlocProvider(create: (_) => serviceLocator<CurrencyBloc>()),
        BlocProvider(create: (_) => serviceLocator<BiometricBloc>()),
        BlocProvider(create: (_) => serviceLocator<ThemeBloc>()),
        BlocProvider(create: (_) => serviceLocator<TransactionBloc>()),
        BlocProvider(create: (_) => serviceLocator<ResetBloc>()),
        // BlocProvider(create: (_) => serviceLocator<BalanceBloc>()),
        // BlocProvider(create: (_) => serviceLocator<EventBloc>()),
        BlocProvider(create: (_) => serviceLocator<AiBloc>()),
        BlocProvider(create: (_) => serviceLocator<BlogBloc>()),
      ],
      child: const MainApp(),
    ),
  );
}
