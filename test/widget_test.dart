

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:unit_widget_test/main.dart';
import 'package:unit_widget_test/pages/detail_page.dart';

void main() {
  testWidgets('Detail Page', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Page"),
        ),
      ),
    ));
    expect(find.text('Detail Page'), findsOneWidget);
    expect(find.byType(Text), findsWidgets);
  });
}
