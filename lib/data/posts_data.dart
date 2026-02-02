import 'package:codeial/models/post_model.dart';

const List<PostModel> posts = [
  PostModel(
    authorName: 'Shivansh Jha',
    authorProfileImage: 'assets/images/profile.jpg',
    isOnline: true,
    timeAgo: '2h',
    content:
        'Just captured this breathtaking sunrise at the mountains! Nature never fails to amaze me. 🌄✨ #NaturePhotography #MountainViews',
    postImage: 'assets/images/sea.jpg',
    likes: 1243,
    views: 15420,
    comments: 2,
  ),
  PostModel(
    authorName: 'Amit Sharma',
    authorProfileImage: 'assets/images/profile.jpg',
    isOnline: false,
    timeAgo: '5h',
    content:
        'Exploring coastal vibes today 🌊 Nothing beats the sound of waves and salty air.',
    postImage: 'assets/images/sea.jpg',
    likes: 856,
    views: 9820,
    comments: 12,
  ),
];
