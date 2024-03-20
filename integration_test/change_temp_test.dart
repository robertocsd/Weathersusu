import 'package:challenge_esusu/dependencies.dart';
import 'package:challenge_esusu/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'Change temperature unit',
    timeout: const Timeout(Duration(seconds: 60)),
    ($) async {
      //initiating the service locator
      setupServiceLocator();
      //initiating app Patrol
      await $.pumpWidgetAndSettle(const MainApp());
      await $.pumpAndSettle();
      await $.tester.tap(find.byKey(const Key('tempUnitSwitch')));
      await $.pumpAndSettle();
      await $.pump(const Duration(seconds: 2));
      await $.tester.tap(find.byKey(const Key('tempUnitSwitch')));
      await $.pumpAndSettle();
      await $.pump(const Duration(seconds: 2));
    },
  );
}
