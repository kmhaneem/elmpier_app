import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/auth/sign_in_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group(
    'SignInPage',
    () {
      Widget makeTestableWidget({required Widget child}) {
        return ProviderScope(
          child: MaterialApp(
            home: child,
          ),
        );
      }

      testWidgets('renders without errors', (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignInPage()));

        expect(find.byType(SignInPage), findsOneWidget);
      });

      testWidgets('finds email and password fields',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignInPage()));

        expect(find.byIcon(Icons.email), findsOneWidget);
        expect(find.byIcon(Icons.lock), findsOneWidget);
      });

      testWidgets(
          'pressing "Sign In" button with empty fields shows validation errors',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignInPage()));

        final signInButton = find.text('Sign In');
        await tester.tap(signInButton);
        await tester.pump();

        expect(find.text('Invalid Email'), findsOneWidget);
        expect(find.text('Short Password'), findsOneWidget);
      });

      testWidgets('displays error message on invalid email during sign-in',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignInPage()));

        final emailFieldFinder = find.byType(TextFormField).at(0);
        final passwordFieldFinder = find.byType(TextFormField).at(1);
        final signInButtonFinder = find.text('Sign In');

        expect(emailFieldFinder, findsOneWidget);
        expect(passwordFieldFinder, findsOneWidget);

        await tester.enterText(emailFieldFinder, 'invalidemail');
        await tester.enterText(passwordFieldFinder, 'ValidPassword123');

        await tester.tap(signInButtonFinder);

        await tester.pumpAndSettle();

        expect(find.text('Invalid Email'), findsOneWidget);
      });

      testWidgets(
          'displays validation messages for incorrect email and password input',
          (WidgetTester tester) async {
        await tester.pumpWidget(makeTestableWidget(child: SignInPage()));

        final emailFieldFinder = find.byType(TextFormField).at(0);
        final passwordFieldFinder = find.byType(TextFormField).at(1);
        final signInButtonFinder = find.text('Sign In');

        await tester.enterText(emailFieldFinder, 'invalidemail');
        await tester.enterText(passwordFieldFinder, '123');

        await tester.tap(signInButtonFinder);

        await tester.pump();

        expect(find.text('Invalid Email'), findsOneWidget);
        expect(find.text('Short Password'), findsOneWidget);
      });
    },
  );
}
