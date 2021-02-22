import 'package:oholiab/src/Point/Point.dart';

class Vertex {
  List<Point> points;
  Vertex(this.points);
  List<double> pointsToRawVertex() {
    var pts = <double>[];
    for (var point in points) {
      for (var p in point.arrayPoint()) {
        pts.add(p);
      }
    }
    return pts;
  }
}
