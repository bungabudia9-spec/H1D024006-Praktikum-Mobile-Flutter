import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Tokokita smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and login widgets are displayed.
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Registrasi'), findsOneWidget);
  });
}
