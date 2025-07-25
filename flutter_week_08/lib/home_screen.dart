import 'package:flutter/material.dart';
import 'package:flutter_week_08/api_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> data = [];

  Future<void> fetchData() async {
    ApiClass api = ApiClass();
    final products = await api.getProducts();

    setState(() {
      data = products;
    });
  }

  @override
  void initState() {
    fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Get API Example')),
      body:
          data.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return ListTile(
                    leading: Image.network(
                      item['image'],
                      width: 50,
                      height: 50,
                    ),
                    title: Text(item['title']),
                    subtitle: Text(
                      item['description'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("\$${item['price']}"),
                        Text("⭐ ${item['rating']['rate']}"),
                      ],
                    ),
                  );
                },
              ),
    );
  }
}
