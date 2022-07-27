import 'package:auth0_web_auth/src/definitions/base_login_options.dart';
import 'package:auth0_web_auth/src/definitions/login_display_type.dart';
import 'package:auth0_web_auth/src/definitions/login_prompt_type.dart';
import 'package:auth0_web_auth/src/stub/_js_utility.dart'
    if (dart.library.html) 'package:auth0_web_auth/src/js/utility/js_utility.dart';

class RedirectLoginOptions extends BaseLoginOptions {
  final Map<String, String> appState;
  final String? fragment;
  final String? redirectUri;
  final Map<String, String>? customParams;

  const RedirectLoginOptions({
    this.appState = const {},
    this.fragment,
    this.redirectUri,
    this.customParams,
    String? acrValues,
    String? audience,
    String? connection,
    LoginDisplayType? displayType,
    String? idTokenHint,
    String? loginHint,
    Duration? maxAge,
    LoginPromptType? promptType,
    String? scope,
    String? uiLocales,
  }) : super(
          acrValues: acrValues,
          audience: audience,
          connection: connection,
          displayType: displayType,
          idTokenHint: idTokenHint,
          loginHint: loginHint,
          maxAge: maxAge,
          promptType: promptType,
          scope: scope,
          uiLocales: uiLocales,
        );

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = super.toMap();
    map['appState'] = JsUtility.primitiveMapToJsObject(appState);
    map['fragment'] = fragment;
    map['redirect_uri'] = redirectUri;
    map.addAll(customParams ?? const {});
    return map;
  }
}
