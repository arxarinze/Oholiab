import 'dart:html';

class Arc {
  CanvasElement canvas;
  bool threeD;
  dynamic _webgl;
  Arc({this.canvas, this.threeD}) {
    if (canvas == null) {
      document.body
          .appendHtml('<canvas id="oho" width="800" height="600"></canvas>');
      canvas = document.getElementById('oholiab');
    }
    if (threeD == true) {
      _webgl =
          canvas.getContext('webgl') || canvas.getContext('experimental-webgl');
    } else {
      _webgl = canvas.getContext3d();
    }
  }
  void render() {}
}
