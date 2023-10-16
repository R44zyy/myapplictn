import 'package:flutter/material.dart';
import 'Book list.dart';
import 'model class.dart';

void main() {
  runApp(BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  final List<Book> books = [
    Book('Book 1', 'Author 1', 15.99),
    Book('Book 2', 'Author 2', 12.99),
    // Add more books here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Book Store'),
        ),
        body: BookList(books),
      ),
    );
  }
}