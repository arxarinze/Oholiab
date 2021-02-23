A 3d game engine library for Dart developers.

## Usage

A simple usage example:

```dart
var canvas = document.getElementById('oholiab');
  var arc = oholiab.Arc(canvas: canvas);
  var scene = Scene();
  var position = Vertex(<Point>[
    Point(-1, 1, 0),
    Point(-1, -1, 0),
    Point(1, 1, 0),
    Point(1, 1, 0),
    Point(1, -1, 0),
    Point(-1, -1, 0)
  ]);
  var box = RawBox(
    position,
    3,
  );
  var material = Material();
  var renderable = Renderable(box, material);
  scene.add(renderable);
  scene.background = Color(alpha: 1, red: 255, blue: 0, green: 0);
  arc.render(scene);
```

```html
<body>
  <canvas id="oholiab" width="1024" height="720"></canvas>
</body>
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/arxarinze/Oholiab/issues
