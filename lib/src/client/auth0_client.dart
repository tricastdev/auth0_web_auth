import 'dart:async';

import 'package:auth0_web_auth/src/definitions/get_id_token_claims_options.dart';
import 'package:auth0_web_auth/src/definitions/get_token_silently_options.dart';
import 'package:auth0_web_auth/src/definitions/get_token_with_popup_options.dart';
import 'package:auth0_web_auth/src/definitions/get_user_options.dart';
import 'package:auth0_web_auth/src/definitions/id_token.dart';
import 'package:auth0_web_auth/src/definitions/logout_options.dart';
import 'package:auth0_web_auth/src/definitions/popup_login_options.dart';
import 'package:auth0_web_auth/src/definitions/redirect_login_options.dart';

abstract class Auth0Client {
  Future<bool> isAuthenticated();

  void loginWithRedirect([RedirectLoginOptions? options]);

  Future<String> buildAuthorizeUrl([RedirectLoginOptions? options]);

  Future<void> loginWithPopup([PopupLoginOptions? options]);

  Future<Map<String, String?>> handleRedirectCallbackWithQuery(
      String searchQuery,
      {List<String> appStateKeys = const []});

  Future<dynamic> getUser([GetUserOptions? options]);

  Future<String?> getTokenSilently([GetTokenSilentlyOptions? options]);

  Future<IdToken> getIdTokenClaims([GetIdTokenClaimsOptions? options]);

  Future<String?> getTokenWithPopup([GetTokenWithPopupOptions? options]);

  void logout([LogoutOptions? options]);
}
