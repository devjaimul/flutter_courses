import 'package:flutter/material.dart';
import 'package:flutter_courses/Home%20Screens/add_products.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildListTile();
        },
        separatorBuilder: (_, __) => Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProduct(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  ListTile _buildListTile() {
    return ListTile(
        leading: Image.network(
          'https://imgs.search.brave.com/6yMu7PaYdJ-aiLbZuWK0cpxAt7NXZXAtaWdf7PNBKJU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE2/MTg2Nzc2MDM1NDQt/NTExNjIzNDZlMTY1/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRoOGZI/UnphR2x5ZEh4bGJu/d3dmSHd3Zkh4OE1B/PT0.jpeg',
          height: 60,
        ),
        title: Text('Product Name'),
        subtitle: Wrap(
          children: [
            Text('Unit Price : 100'),
            Text('Quantity  : 5'),
            Text('total  Price : 500'),
          ],
        ),
        trailing: Wrap(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ],
        ));
  }
}
