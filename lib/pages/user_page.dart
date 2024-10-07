import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_with_auto_route/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserPage extends AutoRouter {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UserPage',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.navigateTo(userTab(children: [const UserDetailsRoute()]));
          },
          child: const Text("Go to User Derails Page"),
        ),
      ),
    );
  }
}
