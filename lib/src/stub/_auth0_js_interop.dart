import 'package:auth0_web_auth/src/client/auth0_client.dart';
import 'package:auth0_web_auth/src/definitions/auth0_client_options.dart';

Future<Auth0Client> createAuth0Client(Auth0ClientOptions options) async {
  throw UnsupportedError('Cannot create Auth0 client on this platform');
}
