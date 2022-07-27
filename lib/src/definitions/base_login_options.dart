import 'package:auth0_web_auth/src/definitions/auth0_definition.dart';
import 'package:auth0_web_auth/src/definitions/login_display_type.dart';
import 'package:auth0_web_auth/src/definitions/login_prompt_type.dart';

abstract class BaseLoginOptions extends Auth0Definition {
  final String? acrValues;
  final String? audience;
  final String? connection;
  final LoginDisplayType? displayType;
  final String? idTokenHint;
  final String? loginHint;
  final Duration? maxAge;
  final LoginPromptType? promptType;
  final String? scope;
  final String? uiLocales;
  final String? cacheLocation;

  const BaseLoginOptions(
      {this.acrValues,
      this.audience,
      this.connection,
      this.displayType,
      this.idTokenHint,
      this.loginHint,
      this.maxAge,
      this.promptType,
      this.scope,
      this.uiLocales,
      this.cacheLocation});

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'acr_values': acrValues,
        'audience': audience,
        'connection': connection,
        'display': _displayTypeToString(displayType),
        'id_token_hint': idTokenHint,
        'login_hint': loginHint,
        'max_age': maxAge?.inSeconds,
        'prompt': _promptTypeToString(promptType),
        'scope': scope,
        'ui_locales': uiLocales,
        'cacheLocation': cacheLocation
      };
}

String? _promptTypeToString(LoginPromptType? type) {
  if (type == null) {
    return null;
  }

  switch (type) {
    case LoginPromptType.none:
      return 'none';
    case LoginPromptType.login:
      return 'login';
    case LoginPromptType.consent:
      return 'consent';
    case LoginPromptType.selectAccount:
      return 'select_account';
  }
}

String? _displayTypeToString(LoginDisplayType? type) {
  if (type == null) {
    return null;
  }

  switch (type) {
    case LoginDisplayType.page:
      return 'page';
    case LoginDisplayType.popup:
      return 'popup';
    case LoginDisplayType.touch:
      return 'touch';
    case LoginDisplayType.wap:
      return 'wap';
  }
}
