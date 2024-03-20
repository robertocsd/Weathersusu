import 'package:challenge_esusu/dependencies.dart';
import 'package:challenge_esusu/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'Change city to Miami',
    timeout: const Timeout(Duration(seconds: 60)),
    ($) async {
      setupServiceLocator();
      await $.pumpWidgetAndSettle(const MainApp());
      await $.pumpAndSettle();
      await $.tester.tap(find.byKey(const Key('textButtonSearch')));
      await $.pumpAndSettle();
      await $.pump(const Duration(seconds: 2));
      //setting Miami as new city
      await $.tester
          .enterText(find.byKey(const Key('searchCityField')), 'Miami');
      await $.pumpAndSettle();
      await $.tester.tap(find.byKey(const Key('locationListTile0')));
      await $.pumpAndSettle();
      await $.pump(const Duration(seconds: 5));
      await $.pumpAndSettle();
    },
  );
}
