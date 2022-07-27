/// Support for doing something awesome.
///
/// More dartdocs go here.
library auth0_web_auth;

import 'package:auth0_web_auth/src/client/auth0_client.dart';
import 'package:auth0_web_auth/src/definitions/auth0_client_options.dart';
import 'package:auth0_web_auth/src/stub/_auth0_js_interop.dart'
    if (dart.library.html) 'package:auth0_web_auth/src/js/_auth0_js_interop.dart';

export 'package:auth0_web_auth/src/client/auth0_client.dart';
export 'package:auth0_web_auth/src/definitions/auth0_client_options.dart';
export 'package:auth0_web_auth/src/definitions/get_id_token_claims_options.dart';
export 'package:auth0_web_auth/src/definitions/get_token_silently_options.dart';
export 'package:auth0_web_auth/src/definitions/get_token_with_popup_options.dart';
export 'package:auth0_web_auth/src/definitions/get_user_options.dart';
export 'package:auth0_web_auth/src/definitions/id_token.dart';
export 'package:auth0_web_auth/src/definitions/login_display_type.dart';
export 'package:auth0_web_auth/src/definitions/login_prompt_type.dart';
export 'package:auth0_web_auth/src/definitions/logout_options.dart';
export 'package:auth0_web_auth/src/definitions/popup_config_options.dart';
export 'package:auth0_web_auth/src/definitions/popup_login_options.dart';
export 'package:auth0_web_auth/src/definitions/redirect_login_options.dart';
export 'package:auth0_web_auth/src/definitions/redirect_login_result.dart';

class Auth0 {
  static Future<Auth0Client> create(Auth0ClientOptions options) =>
      createAuth0Client(options);
}
