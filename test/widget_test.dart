import 'package:flutter_test/flutter_test.dart';
import 'package:taskflow/main.dart';

void main() {
  testWidgets('TaskFlow welcome screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TaskFlowApp());

    // Verify that the title and welcome messages are present.
    expect(find.text('TaskFlow'), findsOneWidget);
    expect(find.textContaining('¡Hola,'), findsOneWidget);
    expect(find.textContaining('Tareas pendientes:'), findsOneWidget);
  });
}
