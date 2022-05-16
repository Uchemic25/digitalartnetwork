class UsersModel {
  final profileimages;
  final String names;
  final String tweets;
  final String likes;
  final String replies;
  final String retweets;
  final String username;
  final postimages;
  final isMultipleImage;

  UsersModel(
      this.profileimages,
      this.names,
      this.tweets,
      this.likes,
      this.postimages,
      this.replies,
      this.retweets,
      this.username,
      this.isMultipleImage);
}

final List<UsersModel> usersList = [
  UsersModel(
      'assets/images/face1.jpeg',
      'musk',
      'Create the highest, grandest vision possible for your life, because you become what you believe.',
      '1',
      'assets/images/13.jpg',
      '90',
      '34',
      '@mickmelody',
      true),
  UsersModel(
      'assets/images/face3.jpeg',
      'mic',
      'When you can’t find the sunshine, be the sunshine',
      '222',
      'assets/images/9.jpg',
      '90',
      '34',
      '@mickmelody',
      false),
  UsersModel(
      'assets/images/face2.jpeg',
      'uche',
      'The grass is greener where you water it',
      '656',
      'assets/images/10.jpg',
      '90',
      '34',
      '@mickmelody',
      true),
  UsersModel(
      'assets/images/image1.jpeg',
      'ada',
      'Wherever life plants you, bloom with grace',
      '22',
      'assets/images/11.jpg',
      '90',
      '34',
      '@mickmelody',
      false),
  UsersModel(
      'assets/images/image2.jpeg',
      'remond',
      'So, what if, instead of thinking about adding additional good things. One at a time. Just let your pile of good things grow',
      '40',
      null,
      '90',
      '34',
      '@mickmelody',
      false),
  UsersModel(
      'assets/images/face1.jpeg',
      'nelly',
      'Little by little, day by day, what is mean for you Will find its way',
      '56',
      'assets/images/12.jpg',
      '90',
      '34',
      '@mickmelody',
      false),
  UsersModel(
      'assets/images/face5.jpeg',
      'remond',
      'Little by little, day by day, what is mean for you Will find its way',
      '55',
      'assets/images/10.jpg',
      '90',
      '34',
      '@mickmelody',
      false),
  UsersModel(
      'assets/images/face5.jpeg',
      'nelly',
      'Little by little, day by day, what is mean for you Will find its way',
      '90',
      'assets/images/12.jpg',
      '90',
      '34',
      '@mickmelody',
      true),
];
