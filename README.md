This package is a Dart wrapper around the [official auth0-spa-js JavaScript package](https://github.com/auth0/auth0-spa-js).
It enables adding Auth0 authentication to Flutter Web Apps without writing
a standalone authentication library in Dart.

## Features

- Authentication with Auth0 (using (PKCE)[https://auth0.com/docs/get-started/authentication-and-authorization-flow/authorization-code-flow-with-proof-key-for-code-exchange-pkce])
- Securing the app with Refresh Tokens
- Use the returned access token to access a protected resource (eg. backend server)

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
var auth0client = await Auth0.create(Auth0ClientOptions(
  domain: example-domain.eu.auth0.com, // Your domain
  clientId: asdfgh123456, // Your client id
  redirectUri: http://example.com, // Your redirect URI
  audience: https://example/api, // Your audience
  useRefreshTokens: true, // Use refresh tokens instead of cookie-based validation
  cacheLocation: 'localstorage' // Store the tokens in local storage, default is in-memory
));

auth0client.loginWithRedirect(
  RedirectLoginOptions(uiLocales: locale ?? languageCode)
);

_client.handleRedirectCallbackWithQuery('query');
```

## Additional information

Feel free to contribute to the package and file bug reports on the official repository.
