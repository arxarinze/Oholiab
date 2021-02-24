import 'dart:web_gl';

import 'package:oholiab/src/Shaders/Shader.dart';

class VertexShader extends Shader {
  VertexShader(String parameters, String members, {String body})
      : super(parameters, members, body: body);
  void build(webgl) {
    shader = webgl.createShader(WebGL.VERTEX_SHADER);
    print(buildShader());
    webgl.shaderSource(shader, buildShader());
    webgl.compileShader(shader);
    if (!webgl.getShaderParameter(shader, WebGL.COMPILE_STATUS)) {
      print(webgl.getShaderInfoLog(shader));
    }
  }
}
