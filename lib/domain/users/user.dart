import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/auth/value_objects.dart';
part 'user.freezed.dart';
@freezed
abstract class User with _$User{
  factory User({required UserName userName, required EmailAddress emailAddress
    ,required DocumentReference reference})=_User;
  
  factory User.empty() {
    final dummyRef=FirebaseFirestore.instance.doc("i");
    return User(userName: UserName("User",),reference: dummyRef,emailAddress: EmailAddress(""));}
}