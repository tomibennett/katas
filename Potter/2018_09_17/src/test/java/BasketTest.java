import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class BasketTest extends Basket {

  @Test
  void empty_basket_costs_zero_euros() {
    assertThat(new Basket().price()).isEqualTo(0f);
  }

  @Test
  void basket_containing_volume_1_costs_eight_euros() {
    int book = 1;

    assertThat(new Basket(book).price()).isEqualTo(8f);
  }

  @Test
  void basket_containing_volume_2_costs_eight_euros() {
    int book = 2;

    assertThat(new Basket(book).price()).isEqualTo(8f);
  }
}