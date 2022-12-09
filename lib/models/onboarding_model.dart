class _OnboardingModel {
  final String title;
  final String subTitle;
  final String imagePath;
  _OnboardingModel({
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });
}

final List<_OnboardingModel> onboardingModel = [
  _OnboardingModel(
    title: 'فريق ماستر تاب',
    subTitle: 'اهلا بيك في فريق ماستر تاب.',
    imagePath: 'assets/images/Team.json',
  ),

  _OnboardingModel(
    title: 'حماية البيانات',
    imagePath: 'assets/images/tow.json',
    subTitle: 'نعمل علي حماية البيانات من خلالنا ولكن يتبقي دورك في حماية الهاتف الخاص بيك.',
  ),

  _OnboardingModel(
    title: 'ارسال واستقبال الرصيد',
    subTitle: 'يمكنك ارسال الرصيد ومتابعة التقارير من خلال التطبيق بسهولة تامة .',
    imagePath: 'assets/images/one1.json',
  ),
];
