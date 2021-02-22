import 'package:oholiab/src/Geometry/BufferAttribute/Buffer.dart';
import 'package:oholiab/src/Vertex/Vertex.dart';

class RawBox {
  Vertex position;
  int vertexSize;
  Buffer buff;
  RawBox(this.position, this.vertexSize) {
    buff = Buffer(position, vertexSize);
  }

  void build(webgl) {
    buff.build(webgl);
  }
}
