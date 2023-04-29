import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';
import 'package:survey/presentation/survey/survey_form/misc/question_presentation_classes.dart';

extension FormQuestionsX on BuildContext {
  List<QuestionPrimitive> get formQuestions =>
      Provider.of<FormQuestions>(this, listen: false).value;
  set formQuestions(List<QuestionPrimitive> value) =>
      Provider.of<FormQuestions>(this, listen: false).value = value;
}
