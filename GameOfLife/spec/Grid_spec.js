/* global describe, it, expect */

import { tap } from 'lodash';

import Grid from '../src/Grid';

describe('grid creation', () => {
  const grid = new Grid(3, 4);

  it('can create a grid from an array of 0 and 1 (0 for a dead cell and 1 for a living cell', () => {
    const grid = new Grid(3, 3);
    grid.from([
      0, 0, 1,
      1, 1, 0,
      0, 0, 1
    ]);

    expect(grid.cells[0].coordinates).toEqual({ x: 0, y: 0});
    expect(grid.cells[0].alive).toBeTruthy();
  });

  it('has a collection of cells equal to the grid dimension', () => {
    expect(grid.cells.length).toBe(12);
  });

  describe('cell representation on a grid', () => {
    grid.generateCells();
    const cells = grid.cells;
    it('generates cells by giving them their position in the grid', () => {
      expect(cells[0].coordinates).toEqual({ x: 0, y: 0 });
      expect(cells[1].coordinates).toEqual({ x: 1, y: 0 });
      expect(cells[cells.length - 2].coordinates).toEqual({ x: 1, y: 3 });
      expect(cells[cells.length - 1].coordinates).toEqual({ x: 2, y: 3 });
    });
  });
});

// describe('grid generations', () => {
//   it('have only dead cells that remains dead after a tick', () => {
//     const grid = new Grid(3, 3);
//     grid.generateCells();
//     grid.tick();
//     const cells = grid.cells;

//     expect(cells[0].alive).toBeFalsy();
//     expect(cells[1].alive).toBeFalsy();
//     expect(cells[2].alive).toBeFalsy();
//     expect(cells[3].alive).toBeFalsy();
//     expect(cells[4].alive).toBeFalsy();
//     expect(cells[5].alive).toBeFalsy();
//     expect(cells[6].alive).toBeFalsy();
//     expect(cells[7].alive).toBeFalsy();
//     expect(cells[8].alive).toBeFalsy();
//   });

//   it('have three live cell in a row that shloud die and spawn a new cell as by reproduction', () => {
//     const grid = new Grid(3, 3);
//     grid.cells = tap(grid.generateCells(), cells => {
//       cells[0] = cells[0].live();
//       cells[1] = cells[1].live();
//       cells[2] = cells[2].live();
//     });
//     grid.tick();
//     const cells = grid.cells;

//     expect(cells[0].alive).toBeTruthy();
//     expect(cells[1].alive).toBeTruthy();
//     expect(cells[2].alive).toBeTruthy();
//     expect(cells[3].alive).toBeTruthy();
//     expect(cells[4].alive).toBeTruthy();
//     expect(cells[5].alive).toBeTruthy();
//     expect(cells[6].alive).toBeTruthy();
//     expect(cells[7].alive).toBeTruthy();
//     expect(cells[8].alive).toBeTruthy();
//   });
// });
