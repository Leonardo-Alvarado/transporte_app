import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transporte_app/main.dart';
import 'package:transporte_app/screens/location_screen.dart';

void main() {
  testWidgets('Login navigates to Location screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Iniciar sesión'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.byType(LocationScreen), findsOneWidget);
  });
}
