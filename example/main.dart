import 'dart:html';

import 'package:oholiab/oholiab.dart' as oholiab;
import 'package:oholiab/src/Arc/Scene/Scene.dart';
import 'package:oholiab/src/Color/Color.dart';
import 'package:oholiab/src/Geometry/2D/RawBox.dart';
import 'package:oholiab/src/Material/Material.dart';
import 'package:oholiab/src/Renderable/Renderable.dart';
import 'package:oholiab/src/Vertex/Vertex.dart';
import 'package:oholiab/src/Point/Point.dart';

void main() {
  var canvas = document.getElementById('oholiab');
  var arc = oholiab.Arc(canvas: canvas);
  var scene = Scene();
  var position = Vertex(<Point>[
    Point(-1, 1, 0),
    Point(-1, -1, 0),
    Point(1, 1, 0),
    Point(1, 1, 0),
    Point(1, -1, 0),
    Point(-1, -1, 0)
  ]);
  var box = RawBox(
    position,
    3,
  );
  var material = Material();
  var renderable = Renderable(box, material);
  scene.add(renderable);
  scene.background = Color(alpha: 1, red: 255, blue: 0, green: 0);
  arc.render(scene);
}
