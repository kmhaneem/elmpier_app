import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/home_page.dart';
import 'package:frontend/presentation/products/search_product.dart';

void main() {
  group(
    'HomePage',
    () {
      Widget makeTestableWidget({required Widget child}) {
        return ProviderScope(
          child: MaterialApp(
            home: child,
          ),
        );
      }

      testWidgets('Tapping bottom navigation items switches screens', (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: HomePage()));

        await tester.tap(find.byIcon(Icons.search));
        await tester.pumpAndSettle();
        expect(find.byType(ProductSearch), findsOneWidget);

      });

      testWidgets('Floating action button is present and clickable', (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: HomePage()));

        final fabFinder = find.byType(FloatingActionButton);
        expect(fabFinder, findsOneWidget);

        await tester.tap(fabFinder);
        await tester.pumpAndSettle();

      });

      testWidgets('Tapping bottom navigation items changes screen',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: HomePage()));

        // Tap the search icon and verify the screen changes
        await tester.tap(find.byIcon(Icons.search));
        await tester.pumpAndSettle();
        expect(find.byType(ProductSearch), findsOneWidget);
      });

      testWidgets('Floating action button is present and interactive',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: HomePage()));

        expect(find.byType(FloatingActionButton), findsOneWidget);

        // Optionally, you can simulate a tap and test the outcome
        await tester.tap(find.byType(FloatingActionButton));
        await tester.pumpAndSettle();

      });
    },
  );
}
