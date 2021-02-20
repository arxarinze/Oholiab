import 'package:oholiab/oholiab.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Oholiab oholiab;

    setUp(() {
      oholiab = Oholiab();
    });

    test('First Test', () {
      expect(oholiab, isTrue);
    });
  });
}
