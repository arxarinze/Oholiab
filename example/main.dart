import 'dart:html';

import 'package:oholiab/oholiab.dart' as oholiab;
import 'package:oholiab/src/Arc/Scene/Scene.dart';
import 'package:oholiab/src/Color/Color.dart';

void main() {
  var canvas = document.getElementById('oholiab');
  var arc = oholiab.Arc(canvas: canvas);
  var scene = Scene();
  scene.background = Color(alpha: 1, red: 255, blue: 0, green: 0);
  arc.render(scene);
}
