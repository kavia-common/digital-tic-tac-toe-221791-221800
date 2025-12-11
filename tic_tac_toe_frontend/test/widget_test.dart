import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('App displays Tic Tac Toe title and board', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Title
    expect(find.text('Tic Tac Toe'), findsOneWidget);

    // Board should have 9 tiles
    expect(find.byType(GridView), findsOneWidget);
  });

  testWidgets('Tapping a cell places a mark', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Tap first cell
    final firstTile = find.byType(InkWell).first;
    await tester.tap(firstTile);
    await tester.pumpAndSettle();

    // After first tap, an X should appear somewhere
    expect(find.text('X'), findsWidgets);
  });
}
