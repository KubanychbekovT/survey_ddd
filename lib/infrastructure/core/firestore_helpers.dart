import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/infrastructure/survey/survey_dto.dart';

//
// extension FireStoreX on FirebaseFirestore{
//   Future<DocumentReference> userDocument()async{
//     final userOption=await getIt<IAuthFacade>().getSignedInUser();
//     final user=userOption.getOrElse(() => throw NotAuthenticatedError());
//     return FirebaseFirestore.instance.collection("users").doc(user.id.getOrCrash());
//   }
// }
extension FireStoreX on FirebaseFirestore {
  CollectionReference get surveyCollection => collection("surveys");
  CollectionReference get surveyResultCollection => collection("surveyResults");

  CollectionReference get userCollection => collection("users");

  DocumentReference get dummyRef => doc("test/test");
}

class DocumentReferenceConverter
    implements JsonConverter<DocumentReference, DocumentReference> {
  const DocumentReferenceConverter();

  @override
  DocumentReference fromJson(DocumentReference documentReference) {
    return documentReference;
  }

  @override
  DocumentReference toJson(DocumentReference documentReference) =>
      documentReference;
}

class ServerTimestampConverter implements JsonConverter<Timestamp, Timestamp> {
  const ServerTimestampConverter();

  @override
  Timestamp fromJson(Timestamp timestamp) {
    return timestamp;
  }

  @override
  Timestamp toJson(Timestamp date) => date;
}

class QuestionDtoConverter
    implements JsonConverter<QuestionDTO, Map<String, dynamic>> {
  const QuestionDtoConverter();

  @override
  QuestionDTO fromJson(Map<String, dynamic> json) {
    return QuestionDTO.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(QuestionDTO questionDto) {
    return questionDto.toJson();
  }
}
