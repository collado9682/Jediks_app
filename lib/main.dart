import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'presentation/pages/onboarding/onboarding_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const FaroApp());
}

class FaroApp extends StatelessWidget {
  const FaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FARO',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
    );
  }
}