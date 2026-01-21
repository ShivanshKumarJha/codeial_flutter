import 'package:codeial/widgets/custom_app_bar.dart';
import 'package:codeial/widgets/post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Center(
            child: SizedBox(
              width: constraints.maxWidth * 0.5,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: const [Post(), SizedBox(height: 8), Post()],
              ),
            ),
          );
        },
      ),
    );
  }
}
