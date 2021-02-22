import 'dart:web_gl';

import 'package:oholiab/src/Arc/Shaders/Shader.dart';

class FragmentShader extends Shader {
  FragmentShader(String parameters, String members)
      : super(parameters, members);
  void build(webgl) {
    var shader = webgl.createShader(WebGL.VERTEX_SHADER);
    webgl.shaderSource(shader, buildShader());
    webgl.compileShader(shader);
  }
}
