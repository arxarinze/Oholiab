import 'dart:html';

import 'dart:web_gl';

import 'Scene/Scene.dart';

class Arc {
  CanvasElement canvas;
  bool d3;
  RenderingContext _webgl;
  Arc({this.canvas, this.d3 = false}) {
    if (canvas == null) {
      document.body.appendHtml(
          '<canvas id="oholiab" width="800" height="600"></canvas>');
      canvas = document.getElementById('oholiab');
    }
    if (!d3) {
      Webgl = canvas.getContext('webgl');
    } else {
      Webgl = canvas.getContext3d();
    }
    //background = Color(red: 0, blue: 0, green: 0, alpha: 1);
  }
  RenderingContext get Webgl {
    return _webgl;
  }

  set Webgl(dynamic obj) {
    _webgl = obj;
  }

  void render(Scene scene) {
    window.animationFrame.then((e) {
      scene.render(Webgl);
    });
  }
}
