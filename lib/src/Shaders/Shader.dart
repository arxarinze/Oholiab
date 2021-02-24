class Shader {
  dynamic shader;
  String parameters = '';
  String members = '';
  String main = 'void main';
  String body;

  Shader(this.parameters, this.members, {this.body = ''});

  String buildShader() {
    return members + '\n' + main + '(' + parameters + ')' + '{' + body + '}';
  }
}
