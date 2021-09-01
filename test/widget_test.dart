import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_widget_test/pages/detail_page.dart';

void main () {
  testWidgets("Flutter Widget Test",  (WidgetTester tester) async {
    DetailPage detailPage = new DetailPage(uid: 2,);
    await tester.runAsync(() async {
      await tester.pumpWidget(MaterialApp(home: detailPage,));
    expect(find.text('Detail Page'), findsOneWidget);
    expect(find.byType(Text), findsWidgets);
    expect(find.byType(Column), findsOneWidget);

    });
  });

}