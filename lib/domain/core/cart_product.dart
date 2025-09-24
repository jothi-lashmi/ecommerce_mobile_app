class CartProduct {
  final String image;
  final String title;
  final String colorText;
  final String amountText;
  int qty;

  CartProduct({
    required this.image,
    required this.title,
    required this.colorText,
    required this.amountText,
    this.qty = 1,
  });

  bool isSame(CartProduct other) {
    return image == other.image &&
        title == other.title &&
        colorText == other.colorText &&
        amountText == other.amountText;
  }
}
