class Basket {
  private int book;

  public Basket(int book) {
    this.book = book;
  }

  public Basket() {
  }

  float price() {
    if (book == 1) {
      return 8;
    } else if (book == 2) {
      return 8;
    }

    return 0;
  }
}
