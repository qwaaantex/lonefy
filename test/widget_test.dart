
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lonefy/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final client = Client()
      .setEndpoint('https://fra.cloud.appwrite.io/v1')
      .setProject('67fdbc7600141c6c18d9')
      .setSelfSigned(status: true);
    await tester.pumpWidget(LonefyMain(client: client,));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
