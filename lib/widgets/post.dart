import 'package:codeial/components/action_button_with_icon.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 4,
      color: theme.colorScheme.surface,
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Badge(
              padding: EdgeInsets.all(12),
              backgroundColor: Colors.green,
              smallSize: 12,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            title: Text(
              'Shivansh Jha',
              style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text('2h ago', style: theme.textTheme.bodySmall),
            trailing: Icon(
              Icons.more_horiz,
              color: theme.colorScheme.onSurface,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              'Just captured this breathtaking sunrise at the mountains! Nature never fails to amaze me. 🌄✨ #NaturePhotography #MountainViews',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 8),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset('assets/images/sea.jpg', fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined, size: 16),
                    const SizedBox(width: 1),
                    Icon(Icons.favorite_border, size: 16),
                    const SizedBox(width: 1),
                    Icon(Icons.insert_emoticon_outlined, size: 16),
                    const SizedBox(width: 2),
                    Text('1,243', style: theme.textTheme.bodyMedium),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility, size: 16),
                    const SizedBox(width: 2),
                    Text('15,420 views', style: theme.textTheme.bodyMedium),
                    const SizedBox(width: 16),
                    Text('2 comments', style: theme.textTheme.bodyMedium),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.1),
            thickness: 1.0,
            indent: 6,
            endIndent: 6,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 2,
              children: [
                ActionButtonWithIcon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  label: 'Like',
                ),
                ActionButtonWithIcon(
                  onPressed: () {},
                  icon: Icon(Icons.comment_outlined),
                  label: 'Comment',
                ),
                ActionButtonWithIcon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                  label: 'Share',
                ),
                ActionButtonWithIcon(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                  label: 'Save',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
