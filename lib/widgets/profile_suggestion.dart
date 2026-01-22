import 'package:codeial/components/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileSuggestion extends StatelessWidget {
  const ProfileSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/dp.jpeg'),
            ),
            title: Text(
              'Shivansh Kumar Jha',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: cs.onSurface,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '@shivanshkjha',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: cs.onSurfaceVariant,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                    children: [
                      TextSpan(
                        text: '34',
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const TextSpan(text: ' followers  '),
                      TextSpan(
                        text: '180',
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const TextSpan(text: ' following'),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              CustomElevatedButton(
                onPressed: () {},
                buttonText: 'Follow',
                buttonColor: cs.secondary,
                textColor: cs.onSecondary,
                icon: Icons.person_add,
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 12,
                ),
                iconSize: 12,
                textStyle: theme.textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  color: cs.onSecondary,
                ),
              ),
              const SizedBox(width: 8),
              Tooltip(
                message: 'Dismiss',
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close, color: cs.onSurfaceVariant, size: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
