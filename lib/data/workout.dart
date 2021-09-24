class Fitness {
  String name;
  String time;
  String description;
  String image;

  Fitness({
    required this.name,
    required this.time,
    required this.description,
    required this.image,
});
}

List<Fitness> fitnessList = [
  Fitness(
    name: 'Push Up',
    time: 'x12',
    description: 'Push up dilakukan dengan cara meletakkan telapak tangan di lantai sekitar selebar bahu dan kaki lurus ke belakang. Kemudian, lakukan gerakan seperti mendorong, sehingga tubuh terangkat ke atas.',
    image: 'push_up.gif',
  ),
  Fitness(
    name: 'Climber',
    time: '00:30',
    description: 'Mountain climber adalah latihan lantai untuk berat badan (mirip dengan plank) yang merupakan gabungan latihan kekuatan dan kardio. Latihan ini bekerja pada otot-otot deltoid, bisep, trisep, gluteus, core, quadrisep, dan hamstring. Latihan ini secara signifikan meningkatkan koordinasi otot, keseimbangan, dan postur sekaligus  membakar lemak.',
    image: 'pendaki_gunung.gif',
  ),
  Fitness(
    name: 'Crunch',
    time: '00:20',
    description: 'Merupakan latihan yang bermanfaat untuk mengencangkan abdomen dan juga membakar lemak-lemak yang terakumulasi di perut dan pinggang seseorang dengan cepat. Latihan ini dilakukan dengan cara mendekatkan tangan dengan kaki dalam posisi tertentu.',
    image: 'bycicle_crunch.gif',
  ),
  Fitness(
    name: 'Sit Up',
    time: 'x12',
    description: 'Sit up adalah latihan perut klasik yang dilakukan dengan berbaring telentang dan mengangkat tubuh Anda. Olahraga tersebut menggunakan berat badan Anda untuk memperkuat dan mengencangkan otot perut yang menstabilkan inti.',
    image: 'sit_up.gif',
  ),
];
