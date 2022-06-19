import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/view/cart/pages/calls/calls_view.dart';
import 'package:telegramuitoolkit/view/cart/pages/settings/settings_view.dart';
import 'package:telegramuitoolkit/view/auth/auth_view.dart';
import 'package:telegramuitoolkit/view/cart/cart_view.dart';
import 'package:telegramuitoolkit/view/cart/pages/chats/chat_view.dart';
import 'package:telegramuitoolkit/view/pages/info/info_view.dart';
import 'package:telegramuitoolkit/view/cart/pages/contacts/contacts_view.dart';
import 'package:telegramuitoolkit/view/pages/profiles/profiles_view.dart';
import 'package:telegramuitoolkit/view/pages/stickers/stickers_view.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/auth':
        return MaterialPageRoute(builder: (_) => const AuthView());

      case '/cart':
        return MaterialPageRoute(builder: (_) => const CartView());

      case '/chat':
        return MaterialPageRoute(builder: (_) => const ChatView());

      case '/info':
        return MaterialPageRoute(builder: (_) => const InfoView());

      case '/contacts':
        return MaterialPageRoute(builder: (_) => const ContactsView());

      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsView());

      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfileView());

      case '/call':
        return MaterialPageRoute(builder: (_) => const CallsView());

      case '/stickers':
        return MaterialPageRoute(builder: (_) => const StickersView());
    }
  }
}
