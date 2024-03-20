import 'package:challenge_esusu/dependencies.dart';
import 'package:challenge_esusu/main.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest(
    'App is showing correctly',
    
    ($) async {
      //initiating the service locator
      setupServiceLocator();

      //initiating app Patrol
      await $.pumpWidgetAndSettle(const MainApp());
      await $.pumpAndSettle();
      // await $('next24Hours').scrollTo().tap();

      // expect($('next24Hours').visible, equals(true));
    },
  );
}
