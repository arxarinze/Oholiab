import 'package:meta/meta.dart';

class Color {
  double red, green, blue, alpha;
  Color(
      {@required this.red,
      @required this.green,
      @required this.blue,
      @required this.alpha});

  String cssColor() {
    return 'rgb($red, $green, $blue, $alpha);';
  }

  List<double> arrayColor() {
    return <double>[red, green, blue, alpha];
  }

  List<double> webglColor() {
    return <double>[red / 255, green / 255, blue / 255, alpha];
  }
}
