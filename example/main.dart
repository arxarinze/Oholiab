import 'dart:html';
import 'package:oholiab/oholiab.dart';

void main() {
  var canvas = document.getElementById('oholiab');
  var arc = Arc(canvas: canvas);
  var scene = Scene();
  var box = Box(height: 40.0, width: 40.0, coordinates: Point(7, 7, 0));
  var material =
      Material(color: Color(alpha: 1, red: 78, blue: 169, green: 78));
  var box1 = Box(height: 70.0, width: 70.0, coordinates: Point(120, 20, 0));
  var renderable = Renderable(box, material);
  var renderable1 = Renderable(box1, material);
  scene.add(renderable);
  scene.add(renderable1);
  arc.render(scene);
}
