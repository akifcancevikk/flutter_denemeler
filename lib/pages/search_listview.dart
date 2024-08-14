import 'package:flutter/material.dart';
import 'package:flutter_denemeler/models/books.dart';

class SearchListviewPage extends StatefulWidget {
  const SearchListviewPage({super.key});

  @override
  State<SearchListviewPage> createState() => _SearchListviewPageState();
}

class _SearchListviewPageState extends State<SearchListviewPage> {
  final controller = TextEditingController();
  List<Book> books = allBooks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Listview Page'),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefix: Icon(Icons.search),
                hintText: 'Kitap Ara',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey)
                ),
              ),
              onChanged: searchBook,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  leading: Image.network(book.urlImage, fit: BoxFit.cover,),
                  title: Text(book.title),
                  subtitle: Text(book.author),
                );
              },
             )
            )
              
        ],
      ),
    );
  }
void searchBook(String query) {
  final suggestions = allBooks.where((book) {
    final bookTitle = book.title.toLowerCase();
    final bookAuthor = book.author.toLowerCase();
    final bookPublisher = book.publisher.toLowerCase();
    final input = query.toLowerCase();
    return bookTitle.contains(input) || bookAuthor.contains(input)|| bookPublisher.contains(input);
  }).toList();
  setState(() {
    books = suggestions;
  });
}

}