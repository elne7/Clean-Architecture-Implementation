import 'package:clean_architecture_task/app/app.dart';
import 'package:clean_architecture_task/features/featch_data_screen/presentation/views/home_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
