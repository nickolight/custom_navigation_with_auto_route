import 'package:auto_route/auto_route.dart';
import 'package:custom_navigation_with_auto_route/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BooksPage',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: ListView(
        children: List.generate(20, (index) {
          return GestureDetector(
            onTap: () {
              context.navigateTo(booksTab(children: [BookDetailsRoute(bookId: index)]));
            },
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(4.0),
              child: ColoredBox(
                color: Colors.black26,
                child: Center(child: Text("Book $index")),
              ),
            ),
          );
        }),
      ),
    );
  }
}
