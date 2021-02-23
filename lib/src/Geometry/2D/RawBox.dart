import 'package:oholiab/src/Arc/Shaders/VertexShader.dart';
import 'package:oholiab/src/Geometry/BufferAttribute/Buffer.dart';
import 'package:oholiab/src/Vertex/Vertex.dart';

class RawBox {
  Vertex position;
  int vertexSize;
  VertexShader vertexShader;
  Buffer buff;
  RawBox(this.position, this.vertexSize) {
    buff = Buffer(position, vertexSize);
    vertexShader = VertexShader('', 'attribute vec3 position;',
        body: 'gl_Position = vec4(position,1.0);');
  }

  void build(webgl) {
    buff.build(webgl);
    vertexShader.build(webgl);
  }
}
