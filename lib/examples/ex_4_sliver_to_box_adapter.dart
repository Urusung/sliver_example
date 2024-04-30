import 'package:flutter/material.dart';

class SliverToBoxAdapterExample extends StatelessWidget {
  const SliverToBoxAdapterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text(
                'SliverToBoxAdapter',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (context, index) {
                return ListTile(
                  title: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
