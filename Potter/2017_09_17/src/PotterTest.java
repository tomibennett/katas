import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * Created by tom on 3/2/17.
 */
public class PotterTest {
    @Test
    public void testBasic() {
      int[] books = {};
      Potter potter = new Potter(books);

      assertEquals(0, potter.price(), 0.0002);

    }

    @Test
    public void testOneBook() {
      int[] books = {3};
      Potter potter = new Potter(books);

      assertEquals(8, potter.price(), 0.0002);
    }

    @Test
    public void testTwoBooks() {
      int[] books = {3, 3};
      Potter potter = new Potter(books);

      assertEquals(8 * 2, potter.price(), 0.0002);
    }

    @Test
    public void testThreeBooks() {
      int[] books = {3, 3, 3};
      Potter potter = new Potter(books);

      assertEquals(8 * 3, potter.price(), 0.0002);
    }

    @Test
    public void testFourBooks() {
      int[] books = {3, 3, 3, 3};
      Potter potter = new Potter(books);

      assertEquals(8 * 4, potter.price(), 0.0002);
    }

    @Test
    public void testTwoDifferentBooks() {
      int [] books = {3, 4};
      Potter potter = new Potter(books);

      assertEquals(8 * 2 * 0.95, potter.price(), 0.0002);
    }

  @Test
  public void testThreeDifferentBooks() {
    int [] books = {3, 4, 5};
    Potter potter = new Potter(books);

    assertEquals(8 * 3 * 0.9, potter.price(), 0.0002);
  }

  @Test
  public void testFourDifferentBooks() {
    int [] books = {0, 3, 4, 5};
    Potter potter = new Potter(books);

    assertEquals(8 * 4 * 0.8, potter.price(), 0.0002);
  }

  @Test
  public void testFiveDifferentBooks() {
    int [] books = {0, 1, 3, 4, 5};
    Potter potter = new Potter(books);

    assertEquals(8 * 5 * 0.75, potter.price(), 0.0002);
  }


  @Test
  public void testTwoDifferentBooksAndOneUnique() {
    int [] books = {0, 1, 1};
    Potter potter = new Potter(books);

    assertEquals(8 * 2 * 0.95 + 8, potter.price(), 0.0002);
  }

  @Test
  public void test() {
    int [] books = {0, 0, 1, 1, 2, 2, 3, 4};
    Potter potter = new Potter(books);

    assertEquals(2 * (8 * 4 * 0.8), potter.price(), 0.0002);
  }
}