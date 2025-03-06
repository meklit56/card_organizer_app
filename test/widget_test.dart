import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:card_organizer_app/main.dart';  // Make sure to import your main file

void main() {
  testWidgets('Card Organizer App Test', (WidgetTester tester) async {
    // Build the CardOrganizerApp widget
    await tester.pumpWidget(CardOrganizerApp());

    // Verify that the CardOrganizerApp has been built
    expect(find.text('Card Organizer'), findsOneWidget);

    // Check that the "Add Card" button is present
    expect(find.byType(ElevatedButton), findsNWidgets(2));

    // Tap the "Add Card" button and verify the state
    await tester.tap(find.text('Add Card'));
    await tester.pump();

    // Verify the action after pressing "Add Card"
    expect(find.text('Card added successfully! ✅'), findsOneWidget);
  });
}




