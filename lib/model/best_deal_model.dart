class BestDealModel {
  final int id;
  final String image;

  BestDealModel({
    this.id = 1,
    this.image =
        'https://1080motion.com/wp-content/uploads/2018/06/NoImageFound.jpg.png',
  });

  static List<BestDealModel> list() {
    return [
      BestDealModel(
        id: 1,
        image: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      ),
      BestDealModel(
        id: 2,
        image:
            'https://1080motion.com/wp-content/uploads/2018/06/NoImageFound.jpg.png',
      ),
      BestDealModel(
        id: 3,
        image:
            'https://lh3.googleusercontent.com/proxy/IBZ2J71NwbOfXUlNrYWa2ATEdWKgPot-4mOT3aYI8TmwLY-jb-K45g8RPPwONhYSx_FL5RGE6tTRa0_Ggy4GSATfweLofGkPrvKkEybmxKgoj4nx6_bv7g5_C2goq-vrh0uLl9KOTZWgBPss',
      ),
      BestDealModel(
        id: 4,
        image: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      ),
      BestDealModel(
        id: 5,
        image:
            'https://croppola.com/croppola/example-bird2/image.jpg?algorithm=croppola&aspectRatio=1&width=500&thumbnailMaximumWidth=150',
      ),
    ];
  }
}
