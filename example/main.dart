import 'dart:html';
import 'package:oholiab/oholiab.dart';

void main() {
  var canvas = document.getElementById('oholiab');
  var arc = Arc(canvas: canvas);
  var scene = Scene();
  var box = Box(height: 40.0, width: 40.0, coordinates: Point(7, 7, 0));
  var material = Material(color: Color(alpha: 1, red: 50, blue: 20, green: 0));
  var renderable = Renderable(box, material);
  scene.add(renderable);
  arc.render(scene);
}
