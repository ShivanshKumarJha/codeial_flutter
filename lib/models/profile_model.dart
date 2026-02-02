class ProfileModel {
  final String name;
  final String username;
  final int followers;
  final int following;
  final String profileImage;

  const ProfileModel({
    required this.name,
    required this.username,
    required this.followers,
    required this.following,
    required this.profileImage,
  });
}
