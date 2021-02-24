import 'package:oholiab/src/Shaders/FragmentShader.dart';
import 'package:oholiab/src/Color/Color.dart';

class Material {
  FragmentShader fragmentShader;
  Color color;
  Material({this.fragmentShader, this.color}) {
    color ??= Color(red: 0, blue: 0, green: 0, alpha: 1);
    fragmentShader ??= FragmentShader(
        '', 'precision mediump float; uniform vec4 uPixelColor; ',
        body: 'gl_FragColor = uPixelColor;');
  }
  void build(webgl) {
    fragmentShader.build(webgl);
    print(fragmentShader.buildShader());
  }
}
