import 'package:flutter/material.dart';

class SliverAnimatedListExample extends StatelessWidget {
  const SliverAnimatedListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SliverAnimatedList',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAnimatedList(
            initialItemCount: 20,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                sizeFactor: animation,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('List Item $index'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
