class Items {
  String title;
  String buttonText;
  String imageUrl;
  double height;

  Items(this.title, this.buttonText, this.imageUrl, this.height);

  static List<Items> generateItems() {
    return [
      Items("Red   T-Shirt", "1000 TK", "assets/img1.webp", 200),
      Items("Black T-shirt", "1000 TK", "assets/img2.jpeg", 250),
      Items("King  T-shirt", "1100 TK", "assets/img3.webp", 200),
      Items("Grey   Blazer", "1900 TK", "assets/img4.webp", 250),
      Items("Black T-shirt", "1000 TK", "assets/img5.webp", 200),
      Items("Full  T-shirt", "1000 TK", "assets/img6.webp", 250),
      Items("Red   Blazer ", "1900 TK", "assets/Rakibull.jpeg", 200),
    ];
  }
}
