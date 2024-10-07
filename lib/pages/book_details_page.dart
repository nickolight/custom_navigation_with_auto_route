import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({super.key, required this.bookId});

  final int bookId;

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BookDetailsPage',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Center(
        child: Text(
          "BookId: ${widget.bookId}",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
