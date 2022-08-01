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
  /// Checks if the client is already authenticated.
  Future<bool> isAuthenticated();

  /// Initiates the redirect login flow.
  /// See [RedirectLoginOptions] for the available parameters.
  void loginWithRedirect([RedirectLoginOptions? options]);

  Future<String> buildAuthorizeUrl([RedirectLoginOptions? options]);

  Future<void> loginWithPopup([PopupLoginOptions? options]);

  /// Handles the redirect callback in PKCE flow.
  Future<Map<String, String?>> handleRedirectCallbackWithQuery(
      String searchQuery,
      {List<String> appStateKeys = const []});

  Future<dynamic> getUser([GetUserOptions? options]);

  /// Fetches the access token in an iFrame.
  Future<String?> getTokenSilently([GetTokenSilentlyOptions? options]);

  Future<IdToken> getIdTokenClaims([GetIdTokenClaimsOptions? options]);

  Future<String?> getTokenWithPopup([GetTokenWithPopupOptions? options]);

  /// Logs out the user from Auth0.
  void logout([LogoutOptions? options]);
}
