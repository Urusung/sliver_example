import 'package:flutter/material.dart';
import 'package:sliver_example/examples.dart';
import 'package:sliver_example/examples/ex_9_sliver_animated_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SliverExampleNavigatorList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<Map<String, dynamic>> _examples = [
  {
    'title': 'SliverAppBar',
    'widget': const SliverAppBarExample(),
  },
  {
    'title': 'SliverPersistentHeader',
    'widget': const SliverPersistentHeaderExample(),
  },
  {
    'title': 'SliverPadding',
    'widget': const SliverPaddingExample(),
  },
  {
    'title': 'SliverToBoxAdapter',
    'widget': const SliverToBoxAdapterExample(),
  },
  {
    'title': 'SliverGrid',
    'widget': const SliverGridExample(),
  },
  {
    'title': 'SliverFixedExtandList',
    'widget': const SliverFixedExtantListExample(),
  },
  {
    'title': 'SliverGridCount',
    'widget': const SliverGridCountExample(),
  },
  {
    'title': 'SliverGridExtent',
    'widget': const SliverGridExtentCount(),
  },
  {
    'title': 'SliverAnimatedList',
    'widget': const SliverAnimatedListExample(),
  }
];

class SliverExampleNavigatorList extends StatelessWidget {
  const SliverExampleNavigatorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'sliver examples',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: _examples.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_examples[index]['title']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => _examples[index]['widget'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
