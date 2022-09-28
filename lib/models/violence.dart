import 'package:green_app/models/user.dart';

class Violence {
  final String postedBy;
  final String imageUrl;
  final String audioTitle;
  final String caption;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isTagged;
  final String taggedUser;

  Violence(
      this.postedBy,
      this.imageUrl,
      this.audioTitle,
      this.caption,
      this.totalLikes,
      this.totalComments,
      this.isLiked,
      this.isTagged,
      this.taggedUser);
}
