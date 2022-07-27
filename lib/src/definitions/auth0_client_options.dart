import 'package:auth0_web_auth/src/definitions/base_login_options.dart';
import 'package:auth0_web_auth/src/definitions/login_display_type.dart';
import 'package:auth0_web_auth/src/definitions/login_prompt_type.dart';

class Auth0ClientOptions extends BaseLoginOptions {
  final Duration? authorizeTimeout;
  final String clientId;
  final String domain;
  final String? issuer;
  final Duration? leeway;
  final String? redirectUri;
  final bool? useRefreshTokens;

  const Auth0ClientOptions(
      {this.authorizeTimeout,
      required this.clientId,
      required this.domain,
      this.issuer,
      this.leeway,
      this.redirectUri,
      this.useRefreshTokens,
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
      String? cacheLocation})
      : super(
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
            cacheLocation: cacheLocation);

  @override
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = super.toMap();
    map['authorizeTimeoutInSeconds'] = authorizeTimeout?.inSeconds;
    map['client_id'] = clientId;
    map['domain'] = domain;
    map['issuer'] = issuer;
    map['leeway'] = leeway?.inSeconds;
    map['redirect_uri'] = redirectUri;
    map['useRefreshTokens'] = useRefreshTokens;

    return map;
  }
}
