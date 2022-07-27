import 'package:auth0_web_auth/src/definitions/auth0_definition.dart';

class PopupConfigOptions extends Auth0Definition {
  final Duration? timeout;

  const PopupConfigOptions({
    this.timeout,
  });

  @override
  Map<String, dynamic> toMap() => <String, dynamic>{
        'timeoutInSeconds': timeout?.inSeconds,
      };
}
