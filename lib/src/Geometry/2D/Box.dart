import 'package:oholiab/oholiab.dart';
import 'package:oholiab/src/Shaders/VertexShader.dart';
import 'package:oholiab/src/Geometry/2D/RawBox.dart';
import 'package:oholiab/src/Geometry/BufferAttribute/Buffer.dart';

class Box implements RawBox {
  double width, height, depth;
  Point coordinates;
  @override
  var position = Vertex(<Point>[
    Point(-1, 1, 0),
    Point(-1, -1, 0),
    Point(1, 1, 0),
    Point(1, 1, 0),
    Point(1, -1, 0),
    Point(-1, -1, 0)
  ]);
  @override
  var vertexSize = 3;
  @override
  Buffer buff;
  @override
  VertexShader vertexShader;

  Box(
      {this.width,
      this.height,
      this.depth,
      this.coordinates,
      this.vertexShader}) {
    buff = Buffer(position, vertexSize);
    vertexShader = VertexShader(
        '', 'attribute vec3 position;uniform mat4 uModelTransform;',
        body: 'gl_Position = vec4(position,1.0);');
  }

  @override
  void build(webgl) {
    webgl.viewport(coordinates.x, coordinates.y, width, height);
    buff.build(webgl);
    vertexShader.build(webgl);
  }
}
