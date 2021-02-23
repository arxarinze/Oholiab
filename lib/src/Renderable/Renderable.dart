import 'dart:web_gl';

import 'package:oholiab/src/Geometry/2D/RawBox.dart';
import 'package:oholiab/src/Material/Material.dart';

class Renderable {
  dynamic prg;
  RawBox rawBox;
  Material material;
  Renderable(this.rawBox, this.material);

  void build(webgl) {
    prg = webgl.createProgram();
    rawBox.build(webgl);
    webgl.attachShader(prg, rawBox.vertexShader.shader);
    material.build(webgl);
    webgl.attachShader(prg, material.fragmentShader.shader);
    webgl.linkProgram(prg);
    if (!webgl.getProgramParameter(prg, WebGL.LINK_STATUS)) {
      print('sdsd');
      print(webgl.getProgramInfoLog(prg));
    }
    var posAttrib = webgl.getAttribLocation(prg, 'position');
    webgl.useProgram(prg);
    webgl.enable(WebGL.DEPTH_TEST);
    webgl.enableVertexAttribArray(posAttrib);
    webgl.vertexAttribPointer(
        posAttrib, rawBox.vertexSize, WebGL.FLOAT, false, 0, 0);
    webgl.drawArrays(WebGL.TRIANGLES, 0, 6);
  }
}
