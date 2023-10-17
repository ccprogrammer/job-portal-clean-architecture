import 'package:job_portal_clean_architecture/core/utils/typedefs.dart';
import 'package:job_portal_clean_architecture/src/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.email,
    required super.points,
    required super.fullName,
    super.groupIds,
    super.following,
    super.followers,
    super.profilePic,
    super.bio,
  });

  factory UserModel.empty() => const UserModel(
        uid: '',
        email: '',
        points: 0,
        fullName: '',
      );

  factory UserModel.fromMap(DataMap map) => UserModel(
        uid: map['uid'] as String,
        email: map['email'] as String,
        points: (map['points'] as num).toInt(),
        fullName: map['fullName'] as String,
        profilePic: map['profilePic'] as String?,
        bio: map['bio'] as String?,
        groupIds: (map['groupIds'] as List<dynamic>).cast<String>(),
        following: (map['following'] as List<dynamic>).cast<String>(),
        followers: (map['followers'] as List<dynamic>).cast<String>(),
      );

  UserModel copyWith({
    String? uid,
    String? email,
    String? profilePic,
    String? bio,
    int? points,
    String? fullName,
    List<String>? groupIds,
    List<String>? enrolledCourseIds,
    List<String>? following,
    List<String>? followers,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      profilePic: profilePic ?? this.profilePic,
      bio: bio ?? this.bio,
      points: points ?? this.points,
      fullName: fullName ?? this.fullName,
      groupIds: groupIds ?? this.groupIds,
      following: following ?? this.following,
      followers: followers ?? this.followers,
    );
  }

  DataMap toMap() {
    return {
      'uid': uid,
      'email': email,
      'profilePic': profilePic,
      'bio': bio,
      'points': points,
      'fullName': fullName,
      'groupIds': groupIds,
      'following': following,
      'followers': followers,
    };
  }
}
