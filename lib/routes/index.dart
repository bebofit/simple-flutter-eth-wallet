// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:simplewallet/errors/not.found.dart';
import 'package:simplewallet/routes/constants.dart';
import 'package:simplewallet/screens/home/index.dart';
import 'package:simplewallet/screens/root.screen.dart';
import 'package:simplewallet/screens/settings/index.dart';
import 'package:simplewallet/screens/user/change.password.dart';
import 'package:simplewallet/screens/user/signin.dart';
import 'package:simplewallet/screens/user/signup.dart';
import 'package:simplewallet/screens/wallet/add-import.wallet.dart';
import 'package:simplewallet/screens/wallet/add.walle.dart';
import 'package:simplewallet/screens/wallet/confirm.saving.mnemonic.dart';
import 'package:simplewallet/screens/wallet/edit.wallet.dart';
import 'package:simplewallet/screens/wallet/import.seed.dart';
import 'package:simplewallet/screens/wallet/receive.crypto.dart';
import 'package:simplewallet/screens/wallet/send.crypto.dart';
import 'package:simplewallet/screens/wallet/show.privatekey.dart';
import 'package:simplewallet/screens/wallet/transactions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var arg = settings.arguments;
  switch (settings.name) {
    case root:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const RootScreen());
    case signin:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const Signin());
    case signup:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const Signup());
    case home:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const Home());
    case createWallet:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => CreateWallet());
    case editWallet:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => EditWallet(
                arg: arg,
              ));
    case confirmWalletCreation:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => const ConfirmSavingMnemonic());

    case addImportWallet:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => const AddImportwallet());
    case importSeed:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => const ImportMnemonic());

    case send:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => SendCrypto(
                arg: arg,
              ));
    case receive:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => ReceiveCrypto(
                arg: arg,
              ));

    case transactions:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const Transactions());
    case showPrivatekey:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => const ShowPrivatekey());
    case setting:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const Settings());
    case changePassword:
      return PageRouteBuilder(
          pageBuilder: (_, a1, a2) => const ChangePassword());

    default:
      return PageRouteBuilder(pageBuilder: (_, a1, a2) => const NotFound());
  }
}
