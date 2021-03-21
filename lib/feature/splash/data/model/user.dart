import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userId;
  final String authToken;

  User({this.userId, this.authToken});

  @override
  List<Object> get props => [userId, authToken];

  static User fromJson(dynamic json) {
    return User(userId: json['user_id'], authToken: json['auth_Token']);
  }
}
