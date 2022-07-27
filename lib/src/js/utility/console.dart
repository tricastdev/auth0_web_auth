import 'package:universal_html/html.dart' as html;

class BrowserConsole {
  static void log(dynamic object) {
    html.window.console.log(object);
  }
}
