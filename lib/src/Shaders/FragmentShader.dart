import 'dart:web_gl';

import 'package:oholiab/src/Shaders/Shader.dart';

class FragmentShader extends Shader {
  FragmentShader(String parameters, String members, {String body})
      : super(parameters, members, body: body);
  void build(webgl) {
    shader = webgl.createShader(WebGL.FRAGMENT_SHADER);
    webgl.shaderSource(shader, buildShader());
    webgl.compileShader(shader);
    if (!webgl.getShaderParameter(shader, WebGL.COMPILE_STATUS)) {
      print(webgl.getShaderInfoLog(shader));
    }
  }
}
