import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/services/end_ponits.dart';
import '../../domain/entity/user_entity.dart';

class UserModel {
  final String email;
  final String name;
  final String id;

  UserModel({
    required this.email,
    required this.name,
    required this.id,
  });

  factory UserModel.fromJson(User user) {
    return UserModel(
      email: user.email!,
      name: user.displayName ?? '',
      id: user.uid,
    );
  }
  toMap() => {
        ApiKey.email: email,
        ApiKey.name: name,
        ApiKey.id: id,
      };

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      email: entity.email!,
      name: entity.name!,
      id: entity.id!,
    );
  }

  UserEntity toEntity() => UserEntity(
        email: email,
        name: name,
        id: id,
      );
}
