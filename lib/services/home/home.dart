import 'package:codeial/widgets/custom_app_bar.dart';
import 'package:codeial/widgets/post.dart';
import 'package:codeial/widgets/profile_suggestion.dart';
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
          return Row(
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.25,
                child: Text('Sidebar'),
              ),
              SizedBox(
                width: constraints.maxWidth * 0.55,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  children: const [Post(), SizedBox(height: 8), Post()],
                ),
              ),
              Container(
                color: Theme.of(context).colorScheme.surface,
                padding: const EdgeInsets.all(12),
                width: constraints.maxWidth * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggestions for you',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      // TODO Currently hiding scrollbar for aesthetics
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(
                          context,
                        ).copyWith(scrollbars: false),
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          children: const [
                            ProfileSuggestion(),
                            SizedBox(height: 2),
                            Divider(thickness: 1),
                            SizedBox(height: 2),
                            ProfileSuggestion(),
                            SizedBox(height: 2),
                            Divider(thickness: 1),
                            SizedBox(height: 2),
                            ProfileSuggestion(),
                            SizedBox(height: 2),
                            Divider(thickness: 1),
                            SizedBox(height: 2),
                            ProfileSuggestion(),
                            SizedBox(height: 2),
                            Divider(thickness: 1),
                            SizedBox(height: 2),
                            ProfileSuggestion(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
