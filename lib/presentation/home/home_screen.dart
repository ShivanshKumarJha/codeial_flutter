import 'package:codeial/data/posts_data.dart';
import 'package:codeial/data/profiles_data.dart';
import 'package:codeial/presentation/home/widgets/create_post.dart';
import 'package:codeial/presentation/components/custom_app_bar.dart';
import 'package:codeial/presentation/home/widgets/post.dart';
import 'package:codeial/presentation/home/widgets/profile_card.dart';
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
      appBar: CustomAppBar(showBackButton: false),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Row(
            children: [
              SizedBox(
                width: constraints.maxWidth * 0.25,
                child: Text('Sidebar'),
              ),
              Container(
                width: constraints.maxWidth * 0.55,
                padding: const EdgeInsets.all(12),
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(child: CreatePost()),
                    const SliverToBoxAdapter(child: SizedBox(height: 12)),
                    SliverList.separated(
                      itemBuilder: (ctx, index) => Post(post: posts[index]),
                      separatorBuilder: (ctx, index) =>
                          const SizedBox(height: 12),
                      itemCount: posts.length,
                    ),
                  ],
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
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(
                          context,
                        ).copyWith(scrollbars: false),
                        child: ListView.separated(
                          itemBuilder: (ctx, index) {
                            return ProfileCard(profile: profiles[index]);
                          },
                          itemCount: profiles.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurfaceVariant,
                              height: 1,
                              thickness: 1,
                            );
                          },
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
