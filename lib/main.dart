import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment3(),
    );
  }
}

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  void productDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Add Product'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Product Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Product Code'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Product Image'),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Product qty'),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'Product Unite price'),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'Product Total price'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('Close')),
                        SizedBox(width: 5,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {},
                            child: Text('Add Product'))
                      ],)
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Products'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, ixdex) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.image,
                  size: 50,
                ),
                title: Text('Apple'),
                subtitle: Text('Price \$500 | Qty: 20'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    SizedBox(
                      height: 10,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => productDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
