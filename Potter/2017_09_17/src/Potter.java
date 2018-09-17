import java.util.ArrayList;
import java.util.HashSet;

/**
 * Created by tom on 3/2/17.
 */
public class Potter {
  private ArrayList<Integer> books = new ArrayList<Integer>();
  private int nbDifferentBooks;

  private float[] discountsFactors = {0, 1, 0.95f, 0.9f, 0.80f, 0.75f};

  Potter(int[] books) {
    for (int book: books) {
      this.books.add(book);
    }

    nbDifferentBooks = new HashSet<Integer>(this.books).size();
  }

  public float price() {
    return 8 * nbBooksNotDiscounted() + applyDiscount();
  }

  private float nbBooksNotDiscounted() {
    return books.size() - nbDifferentBooks;
  }

  private float applyDiscount() {
    return 8 * nbDifferentBooks * discountFactor();
  }

  private float discountFactor() {
    return discountsFactors[nbDifferentBooks];
  }
}
