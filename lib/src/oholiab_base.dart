import 'dart:html';

class Oholiab {
  CanvasElement canvas;
  Oholiab.WebGLRenderer([this.canvas]) {
    if (canvas == null) {
      document.body
          .appendHtml('<canvas id="oho" width="800" height="600"></canvas>');
      canvas = document.getElementById('oho');
      print(canvas.id);
    } else {
      print(canvas.id);
    }
  }
  Oholiab.PerspectiveCamera();
}
