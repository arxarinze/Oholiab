import 'package:oholiab/oholiab.dart';
import 'package:oholiab/src/Geometry/2D/RawBox.dart';
import 'package:oholiab/src/Geometry/BufferAttribute/Buffer.dart';

class Box {
  double width, height, depth;
  Point coordinate;
  @override
  Vertex position = Vertex(<Point>[
    Point(-1, 1, 0),
    Point(-1, -1, 0),
    Point(1, 1, 0),
    Point(1, 1, 0),
    Point(1, -1, 0),
    Point(-1, -1, 0)
  ]);
  Buffer buff;
  Box({this.width, this.height, this.depth, this.coordinate}) {
    buff = Buffer(position, 3);
  }

  void build(dynamic webgl) {
    buff.build(webgl);
  }
}
