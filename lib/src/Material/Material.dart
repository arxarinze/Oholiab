import 'package:oholiab/src/Arc/Shaders/FragmentShader.dart';
import 'package:oholiab/src/Arc/Shaders/VertexShader.dart';

class Material {
  FragmentShader fragmentShader;
  Material([this.fragmentShader]) {
    fragmentShader ??= FragmentShader('', 'precision mediump float;',
        body: 'gl_FragColor = vec4(0.0,0.0,0.0,1.0);');
  }
  void build(webgl) {
    fragmentShader.build(webgl);
    print(fragmentShader.buildShader());
  }
}
