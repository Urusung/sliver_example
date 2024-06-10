import 'package:flutter/material.dart';

class SliverGridExample extends StatelessWidget {
  const SliverGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SliverGrid',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: Colors.teal[100 * (index % 9)],
                  alignment: Alignment.center,
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
