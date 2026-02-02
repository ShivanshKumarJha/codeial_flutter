import 'package:codeial/presentation/components/custom_elevated_button.dart';
import 'package:codeial/presentation/components/icon_actions_bar.dart';
import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool _showActions = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _showActions = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _hideActions() {
    setState(() {
      _showActions = false;
    });
    _focusNode.unfocus();
  }

  void _onCancel() {
    _hideActions();
    _controller.clear();
  }

  void _onPost() {
    _hideActions();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              focusNode: _focusNode,
              controller: _controller,
              maxLines: 4,
              onTap: () {
                if (!_showActions) {
                  setState(() {
                    _showActions = true;
                  });
                }
              },
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                contentPadding: EdgeInsets.all(12),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
              ),
            ),
            SizedBox(height: 12),
            if (_showActions)
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add to your post',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    IconActionsBar(),
                  ],
                ),
              ),
            if (_showActions) SizedBox(height: 12),
            if (_showActions)
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: _onCancel,
                      buttonText: 'Cancel',
                      buttonColor: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: _onPost,
                      buttonText: 'Post',
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}


/*
- On focus or tap: Set _showActions = true so the icon bar and buttons appear.
- On outside tap/unfocus: Do NOT hide; visibility is independent of losing focus.
- On Cancel/Post: Call _hideActions() to collapse the icon bar and buttons; Cancel also clears the text.
- In initState: FocusNode listener only sets _showActions to true on focus gain; TextField.onTap also ensures showing.
- Cleanup: Always dispose FocusNode and TextEditingController in dispose().
*/