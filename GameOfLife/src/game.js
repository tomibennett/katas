import { tap } from 'lodash';
import Grid from '../src/Grid';

function sleep(time, callback) {
  const stop = new Date().getTime();
  while (new Date().getTime() < stop + time) {
    ;
  }
  callback();
}

const grid = new Grid(10, 10);
grid.cells = tap(grid.generateCells(), cells => {
  cells = cells.map(cell => cell.live());
  cells[0] = cells[0].live();
  cells[1] = cells[1].die();
  cells[2] = cells[2].die();
  cells[3] = cells[3].die();
  cells[4] = cells[4].die();
  cells[8] = cells[8].live();
});

while (grid.hasLivingCells()) {
  for (let y = 0; y < grid.height * grid.width; y += grid.width) {
    console.log(
      grid.cells
        .slice(y, y + grid.width)
        .map(cell => cell.alive ? 'x' : 'o')
        .join('')
    );
  }
  console.log();

  // sleep(3000, grid.tick);
}
