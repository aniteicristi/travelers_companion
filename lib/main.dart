import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travelers_companion/util/navigator/go_router.dart';
import 'package:travelers_companion/util/theme/fonts.dart';
import 'package:travelers_companion/util/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: goRouter,
        theme: ThemeData(
          colorScheme: flexSchemeDark,
          useMaterial3: true,
          fontFamily: AppFonts.slabo,
        ),
      ),
    );
  }
}
