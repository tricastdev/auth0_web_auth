@JS()
library auth0_js;

import 'package:auth0_web_auth/src/definitions/auth0_client_options.dart';
import 'package:auth0_web_auth/src/js/_auth0_client_js.dart';
import 'package:auth0_web_auth/src/js/utility/js_object_bridge.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('createAuth0Client')
external dynamic _createAuth0Client(dynamic options);

///
/// The method bridges Auth0 JS SDK's createAuth0Client method, mapping and renaming
/// some of the arguments for consistency and convenience for Dart usage.
///
Future<Auth0ClientJs> createAuth0Client(Auth0ClientOptions options) async {
  return Auth0ClientJs(JsObjectBridge(await promiseToFuture<dynamic>(
      _createAuth0Client(options.toJsObject()))));
}
