import Cell from '../src/Cell';

export default class Grid {
  constructor(width, height) {
    this.width = width;
    this.height = height;
    this.infiniteX = this.infinite(this.width);
    this.infiniteY = this.infinite(this.height);
    this.cells = Array(
      this.width * this.height
    ).fill(undefined);
  }

  from(cells) {
    this.cells = cells.map((cell, index) =>
      {
        x: index % this.width,
        y: Math.trunc(index / this.width),
        alive: cell === 0 ? false : true
      }
    );
  }

  generateCells() {
    this.cells = this.cells.map((cell, index) =>
      new Cell(this,
        {
          x: index % this.width,
          y: Math.trunc(index / this.width)
        }
      )
    );

    return this.cells;
  }

  infinite(boundary) {
    return (
      coord =>
        coord === -1
          ? boundary - 1
          : coord === boundary
              ? 0
              : coord
    );
  }


  cell({ x, y }) {
    return this.cells[this.infiniteX(x) + this.width * this.infiniteY(y)];
  }
}
