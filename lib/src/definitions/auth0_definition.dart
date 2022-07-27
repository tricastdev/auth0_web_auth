import 'package:auth0_web_auth/src/stub/_js_utility.dart'
    if (dart.library.html) 'package:auth0_web_auth/src/js/utility/js_utility.dart';

abstract class Auth0Definition {
  const Auth0Definition();

  Map<String, dynamic> toMap();

  dynamic toJsObject() => JsUtility.primitiveMapToJsObject(toMap());
}
