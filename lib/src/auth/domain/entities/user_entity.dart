// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
    required this.uid,
    required this.email,
    required this.points,
    required this.fullName,
    this.groupIds = const [],
    this.following = const [],
    this.followers = const [],
    this.profilePic,
    this.bio,
  });

  factory UserEntity.empty() => const UserEntity(
        uid: '',
        email: '',
        points: 0,
        fullName: '',
        profilePic: '',
        bio: '',
        groupIds: [],
        followers: [],
        following: [],
      );

  final String uid;
  final String email;
  final String? profilePic;
  final String? bio;
  final int points;
  final String fullName;
  final List<String> groupIds;
  final List<String> following;
  final List<String> followers;

  @override
  List<Object?> get props => [
        uid,
        email,
        profilePic,
        bio,
        points,
        fullName,
        groupIds.length,
        following.length,
        followers.length,
      ];

  @override
  bool get stringify => true;
}
