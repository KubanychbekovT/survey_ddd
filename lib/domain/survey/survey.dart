import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/core/failures.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';

part 'survey.freezed.dart';

@freezed
abstract class Survey implements _$Survey {
  const factory Survey(
      {required SurveyName name,
      required DateTime date,
      required SurveyQuestions surveyQuestions,
      required DocumentReference reference,
      required DocumentReference owner}) = _Survey;
  const Survey._();

  factory Survey.empty() {
    final dummyRef = FirebaseFirestore.instance.dummyRef;
    return Survey(
      name: SurveyName(""),
      date: DateTime.now(),
      surveyQuestions: SurveyQuestions(const []),
      reference: dummyRef,
      owner: dummyRef,
    );
  }

  Option<ValueFailure<dynamic>> get   failureOption {
    return name.failureOrUnit
    //    .andThen(surveyQuestions.failureOrUnit)
    //TODO failureOptionForSurveyQuestions
        //     .andThen(
        //     surveyQuestions
        //       .getOrCrash()
        //   // Getting the failureOption from the TodoItem ENTITIY - NOT a failureOrUnit from a VALUE.
        //       .map((question) => question.failureOption)
        //       .filter((o) => o.isSome())
        //   // If we can not get the 0th element, the list is empty. In such a case, it's valid.
        //       .getOrElse(0, (_) => none())
        //       .fold(
        //         () => right(unit),
        //         (f) => left(f),
        //   ),
        // )
        .fold((f) => some(f), (r) => none());
  }
}
