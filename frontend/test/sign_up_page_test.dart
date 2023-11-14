import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/auth/sign_up_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group(
    'SignUpPage',
    () {
      Widget makeTestableWidget({required Widget child}) {
        return ProviderScope(
          child: MaterialApp(
            home: child,
          ),
        );
      }

      testWidgets('renders without errors', (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

        expect(find.byType(SignUpPage), findsOneWidget);
      });

      testWidgets('finds email, phone, and password fields',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

        expect(find.byIcon(Icons.email), findsOneWidget);
        expect(find.byIcon(Icons.phone), findsOneWidget);
        expect(find.byIcon(Icons.lock), findsOneWidget);
      });

      // testWidgets(
      //     'pressing "Sign Up" button navigates to the next page or shows error',
      //     (WidgetTester tester) async {
      //   await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

      //   // Find the sign-up button
      //   final signUpButtonFinder = find.byType(CustomElevatedButton);

      //   // Tap on the sign-up button
      //   await tester.tap(signUpButtonFinder);

      //   // Rebuild the widget with the new state
      //   await tester.pumpAndSettle();
      // });

      // testWidgets('all key widgets are present on the sign-up page',
      //     (WidgetTester tester) async {
      //   await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

      //   // Check for presence of key widgets
      //   expect(find.byType(CustomTextFormField),
      //       findsNWidgets(3)); // Assuming there are three text fields
      //   expect(find.byType(CustomElevatedButton), findsOneWidget);
      // });

      // testWidgets('presence of page title', (WidgetTester tester) async {
      //   await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

      //   expect(find.text('Sign Up'), findsOneWidget);
      // });

      // testWidgets('sign up button is present', (WidgetTester tester) async {
      //   await tester.pumpWidget(makeTestableWidget(child: SignUpPage()));

      //   expect(find.byType(CustomElevatedButton), findsOneWidget);
      // });
    },
  );
}
