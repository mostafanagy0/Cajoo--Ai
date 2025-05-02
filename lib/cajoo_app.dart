import 'package:cajoo/core/routing/app_router.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/state%20management/cubit/app_lanuage_cubit.dart';
import 'package:cajoo/core/state%20management/cubit/app_lanuage_state.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CajooApp extends StatelessWidget {
  const CajooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.watch<AppLanuageCubit>().state is LanguageChanged
          ? (context.watch<AppLanuageCubit>().state as LanguageChanged).locale
          : const Locale('en'),
      supportedLocales: const [Locale('en'), Locale('ar')],
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.strtup,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
