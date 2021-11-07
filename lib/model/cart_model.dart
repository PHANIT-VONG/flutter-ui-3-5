class CartModel {
  final String image;
  final String title;
  final double price;
  final int qty;

  CartModel({
    required this.image,
    this.title = 'Title',
    this.price = 0.0,
    this.qty = 0,
  });

  static List<CartModel> cartList() {
    return [
      CartModel(
        image:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
        title: 'images.unsplash',
        price: 105.0,
        qty: 5,
      ),
      CartModel(
        image:
            'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&w=1000&q=80',
        title: 'photo-1523275',
        price: 100.0,
        qty: 10,
      ),
      CartModel(
        image:
            'https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        title: 'images.pexels',
        price: 500.0,
        qty: 10,
      ),
    ];
  }
}
