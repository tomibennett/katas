import { tap } from 'lodash';

const neighboursCoordinates = ({ x, y }) => [
  { x: x - 1, y: y - 1 },
  { x, y: y - 1 },
  { x: x + 1, y: y - 1 },

  { x: x - 1, y },
  { x: x + 1, y },

  { x: x - 1, y: y + 1 },
  { x, y: y + 1 },
  { x: x + 1, y: y + 1 }
];

export default class Cell {
  constructor(grid, coordinates) {
    this.grid = grid;
    this.alive = undefined;
    this.coordinates = coordinates;
  }

  clone() {
    return new Cell(this.grid, this.coordinates);
  }

  live() {
    return tap(this.clone(), cell => cell.alive = true);
  }

  die() {
    return tap(this.clone(), cell => cell.alive = false);
  }

  nextGeneration() {
    const neighboursAlive = this.neighboursAlive().length;

    if ((this.alive && neighboursAlive === 2) || neighboursAlive === 3) {
      return this.live();
    }
    return this.die();
  }

  neighboursAlive() {
    return neighboursCoordinates(this.coordinates)
      .map(neighbourCoordinates =>
        this.grid.cell(neighbourCoordinates)
      )
      .filter(neighbour =>
        neighbour.alive
      );
  }
}
