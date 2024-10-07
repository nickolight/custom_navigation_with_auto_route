import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDetailsPage extends AutoRouter {
  const UserDetailsPage({super.key});

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UserDetailsPage',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: const Center(
        child: Text("UserDetailsPage"),
      ),
    );
  }
}
