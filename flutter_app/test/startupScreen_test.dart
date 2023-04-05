import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:Drowsy/startupScreen.dart';
import 'package:Drowsy/secondPage.dart';

void main() {
  testWidgets('StartupScreen should show app name',
      (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(StartupScreen());

    // Find the Text widget that displays the app name
    final appTitleFinder = find.text('AWAKELY');

    // Verify that the Text widget is displayed
    expect(appTitleFinder, findsOneWidget);
  });

  testWidgets('StartupScreen should navigate to SecondPage on button press',
      (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(StartupScreen());

    // Find the button that navigates to the SecondPage
    final buttonFinder = find.widgetWithText(ElevatedButton, 'GET STARTED');

    // Tap the button
    await tester.tap(buttonFinder);

    // Rebuild the widget tree after the button press
    await tester.pump();

    // Find the SecondPage widget
    final secondPageFinder = find.byType(SecondPage);

    // Verify that the SecondPage widget is displayed
    expect(secondPageFinder, findsOneWidget);
  });
}
