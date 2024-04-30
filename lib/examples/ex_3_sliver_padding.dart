import 'package:flutter/material.dart';

class SliverPaddingExample extends StatelessWidget {
  const SliverPaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) {
                  return Container(
                    color: Colors.green[100 * (index % 9)],
                    height: 100,
                    alignment: Alignment.center,
                    child: Text('Padded List Item $index'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
