part of 'app_routes.dart';

enum AppRouteState {
  login('login', 'login'),
  home('home', 'home'),
  community('community', 'community'),
  chat('chat', 'chat'),
  profile('profile', 'profile');

  const AppRouteState(this.name, this.path);

  final String path;
  final String name;
}
