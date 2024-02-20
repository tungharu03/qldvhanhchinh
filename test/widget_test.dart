import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:qldvhanhchinh/main.dart'; 

void main() {
  testWidgets('MyApp UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp([]));

    // Verify that our app displays the app bar.
    expect(find.text('User Info'), findsOneWidget);

    // Verify that the app displays a list of users.
    expect(find.byType(ListTile), findsWidgets);

    // You can add more test cases here based on your app's UI.

    // For example, if you have a specific user in your test data:
    expect(find.text('Lê Thanh Tùng'), findsOneWidget);
    expect(find.text('lethanhtungvvtb@example.com'), findsOneWidget);

    // If you have buttons or other interactive elements, you can test their functionality:
    // await tester.tap(find.byType(YourButtonWidget));
    // await tester.pump();

    // Verify the changes on the UI based on the action performed.

    // You can also test navigation if you have different screens in your app.
    // For example, if there's a detailed user screen:
    // await tester.tap(find.byType(ListTile).first);
    // await tester.pump();

    // Verify that the detailed user screen is displayed.

  });
}


