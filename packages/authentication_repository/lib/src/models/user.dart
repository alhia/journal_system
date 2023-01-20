import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String id;
  final String email;
  final String firstName;
  final String lastName;

  const User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName});
  // Apply the validator
  static const empty = User(id: '', email: '', firstName: '', lastName: '');
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, firstName];
}

@Collection<User>('users')
final usersRef = UserCollectionReference();
