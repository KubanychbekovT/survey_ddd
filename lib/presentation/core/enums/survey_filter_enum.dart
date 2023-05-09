enum SurveyFilterType {
  all,
  my,
  participating,
}
extension FilterExtension on SurveyFilterType {
  String get description {
    switch (this) {
      case SurveyFilterType.all:
        return 'Все опросы';
      case SurveyFilterType.my:
        return 'Мои опросы';
      case SurveyFilterType.participating:
        return 'Рабочие опросы';
    }
  }
}