import 'package:flutter/material.dart';

import 'model class.dart';

class BookList extends StatelessWidget {
  final List<Book> books;

  BookList(this.books);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (ctx, index) {
        final book = books[index];
        return ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          trailing: Text('\$${book.price.toStringAsFixed(2)}'),
        );
      },
    );
  }
}
