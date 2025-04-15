enum Assets {
  imgSamatica('samatica'),
  imgMoonx('moonx'),
  imgProfile('profile');

  String get toPng => 'assets/images/img_$name.png';

  final String name;

  const Assets(this.name);
}
