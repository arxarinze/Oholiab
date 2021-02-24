import 'package:oholiab/src/Shaders/VertexShader.dart';
import 'package:oholiab/src/Geometry/BufferAttribute/Buffer.dart';
import 'package:oholiab/src/Vertex/Vertex.dart';

class RawBox {
  Vertex position;
  int vertexSize;
  VertexShader vertexShader;
  Buffer buff;
  RawBox(this.position, this.vertexSize, [this.vertexShader]) {
    buff = Buffer(position, vertexSize);
    vertexShader ??= VertexShader(
        '', 'attribute vec3 position; uniform mat4 uModelTransform;',
        body: 'gl_Position = vec4(position,1.0);');
  }

  void build(webgl) {
    buff.build(webgl);
    vertexShader.build(webgl);
  }
}
