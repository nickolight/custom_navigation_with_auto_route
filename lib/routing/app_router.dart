import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_with_auto_route/pages/book_details_page.dart';
import 'package:custom_navigation_with_auto_route/pages/books_page.dart';
import 'package:custom_navigation_with_auto_route/pages/home_page.dart';
import 'package:custom_navigation_with_auto_route/pages/settings_page.dart';
import 'package:custom_navigation_with_auto_route/pages/user_details_page.dart';
import 'package:custom_navigation_with_auto_route/pages/user_page.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: '/home',
          children: [
            AutoRoute(
              page: booksTab.page,
              path: 'books',
              children: [
                AutoRoute(path: '', page: BooksRoute.page),
                AutoRoute(path: 'book-details', page: BookDetailsRoute.page),
              ],
            ),
            AutoRoute(
              page: userTab.page,
              path: 'user',
              children: [
                AutoRoute(path: '', page: UserRoute.page),
                AutoRoute(path: 'user-details', page: UserDetailsRoute.page),
              ],
            ),
            AutoRoute(
              page: settingsTab.page,
              path: 'settings',
              children: [
                AutoRoute(path: '', page: SettingsRoute.page),
              ],
            ),
          ],
        ),
      ];
}

const userTab = EmptyShellRoute('UserTab');
const booksTab = EmptyShellRoute('BooksTab');
const settingsTab = EmptyShellRoute('SettingsTab');
