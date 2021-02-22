import 'dart:typed_data';
import 'dart:web_gl';

import 'package:oholiab/src/Vertex/Vertex.dart';

class Buffer {
  Vertex vertex;
  int vertexSize;
  bool normalized;
  Buffer(this.vertex, this.vertexSize, {this.normalized});

  void build(webgl) {
    webgl.bindBuffer(WebGL.ARRAY_BUFFER, webgl.createBuffer());
    webgl.bufferData(WebGL.ARRAY_BUFFER,
        Float32List.fromList(vertex.pointsToRawVertex()), WebGL.STATIC_DRAW);
  }
}
