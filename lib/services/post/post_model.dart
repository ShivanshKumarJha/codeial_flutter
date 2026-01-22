class PostModel {
  final String authorName;
  final String authorProfileImage;
  final bool isOnline;
  final String timeAgo;
  final String content;
  final String postImage;
  final int likes;
  final int views;
  final int comments;

  const PostModel({
    required this.authorName,
    required this.authorProfileImage,
    required this.isOnline,
    required this.timeAgo,
    required this.content,
    required this.postImage,
    required this.likes,
    required this.views,
    required this.comments,
  });
}
