import 'package:assignment3/pdf_with_api/pdf_viewer.dart';
import 'package:flutter/material.dart';


void main(
    ){runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookList(),
    );
  }
}
class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  final List<Map< String,String>>books = [
    {
      'title': 'Test pdf 1',
      'url' : 'https://onlinetestcase.com/wp-content/uploads/2023/06/1.5-MB.pdf'
    },
    {
      'title': 'Test pdf 2',
      'url' : 'https://onlinetestcase.com/wp-content/uploads/2023/06/1.5-MB.pdf'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context,index){
            return ListTile(
              trailing: Icon(Icons.picture_as_pdf,color: Colors.green,size: 30,),
              title: Text(books[index]['title'].toString()),
              onTap: ()=>Navigator.push(
                  context,MaterialPageRoute(builder: (context)=>PdfViewer(url: books[index]['url'].toString(),))
              ),
            );
          }

      ),
    );
  }
}