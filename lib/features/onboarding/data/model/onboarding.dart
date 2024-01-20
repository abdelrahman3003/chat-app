class OnboardingModel {
  final String title;
  final String subtilte;
  final String image;

  OnboardingModel(
      {required this.title, required this.subtilte, required this.image});
}

List<OnboardingModel> onboadingList = [
  OnboardingModel(
    title: "Chat anytime , anywhere",
    subtilte:
        "Passing for any information on any screen , any device insatlly is mode simp;e at its subtime",
    image: "assets/images/onboardingImages/1.PNG",
  ),
  OnboardingModel(
    title: "Your space in your dream",
    subtilte:
        "A lag-free video chat connection between your users is easy and much everywhere on any device",
    image: "assets/images/onboardingImages/2.PNG",
  ),
  OnboardingModel(
    title: "Perfect chat solution",
    subtilte: "your space in your dream and ",
    image: "assets/images/onboardingImages/3.PNG",
  ),
];
