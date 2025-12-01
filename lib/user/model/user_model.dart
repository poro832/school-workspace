import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  final String? uid;
  final String? email;
  final String? name;

  const UserModel({
   this.uid,
   this.email,
   this.name,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  @override
  List<Object?> get props => [uid, email,name];
}