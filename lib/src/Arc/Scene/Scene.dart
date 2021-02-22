import 'dart:web_gl';

import 'package:oholiab/src/Color/Color.dart';

class Scene {
  var _background;
  var _gl; //webgl instance

  var content = <dynamic>[];

  Scene();

  dynamic get gl {
    return _gl;
  }

  set gl(dynamic gl) {
    _gl = gl;
  }

  dynamic get background {
    return _background;
  }

  set background(Color color) {
    _background = color;
  }

  void renderBackground() {
    gl.clearColor(
        background.red, background.green, background.blue, background.alpha);
    gl.clear(WebGL.COLOR_BUFFER_BIT);
  }

  void render(webgl) {
    gl = webgl;
    renderBackground();
  }
}
