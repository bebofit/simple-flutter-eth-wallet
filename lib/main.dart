// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:simplewallet/providers/auth.provider.dart';
import 'package:simplewallet/providers/compose.provider.dart';
import 'package:simplewallet/providers/network.provider.dart';

import 'package:simplewallet/providers/utils.provider.dart';
import 'package:simplewallet/providers/wallet.provider.dart';

import 'package:simplewallet/routes/index.dart' as router;
import 'package:simplewallet/themes/index.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ComposeProvider()),
      ChangeNotifierProvider(create: (_) => UtilsStateNotifier()),
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_) => WalletProvider()),
      ChangeNotifierProvider(create: (_) => NetworkProvider()),
    ],
    child: const SimpleWallet(),
  ));
}

class SimpleWallet extends StatelessWidget {
  const SimpleWallet({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: '/',
      onGenerateRoute: router.generateRoute,
    );
  }
}
