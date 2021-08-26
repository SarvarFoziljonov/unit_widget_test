

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unit_widget_test/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    expect(find.byType(Container), findsWidgets);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.text("SetState"), findsWidgets);
  });
}
