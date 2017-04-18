/* global describe, it, expect */

import { tap } from 'lodash';

import Grid from '../src/Grid';
import Cell from '../src/Cell';

describe('cell', () => {
  const origin = { x: 0, y: 0 };

  it('have coordinates', () => {
    const cell = new Cell(null, origin);

    expect(cell.coordinates).toEqual(origin);
  });

  describe('alive status', () => {
    const cell = new Cell(origin);
    it('can be dead', () => {
      cell.alive = false;
      expect(cell.alive).toBe(false);
    });

    it('can be alive', () => {
      cell.alive = true;
      expect(cell.alive).toBe(true);
    });
  });

  describe('evolving in a 3 * 3 infinite grid', () => {
    const grid = new Grid(3, 3);
    grid.generateCells();

    describe('can retreive the number of neighbours alive when', () => {
      grid.cells = grid.cells.map(cell =>
        cell.live()
      );

      it('cell is at the middle of the infinite grid', () =>
        expect(grid.cells[4].neighboursAlive().length).toBe(8)
      );

      it('cell is at the upper left corner of the infinite grid', () =>
        expect(grid.cells[0].neighboursAlive().length).toBe(8)
      );

      it('cell is at the lower right corner of the infinite grid', () =>
        expect(grid.cells[8].neighboursAlive().length).toBe(8)
      );
    });
  });

  describe('live cycle', () => {
    describe('first rule:', () => {
      it('any cell with fewer than two live neighbours dies, as if by underpopulation', () => {
        const grid = new Grid(3, 3);
        grid.cells = tap(grid.generateCells(), cells => {
          cells[0] = cells[0].live();
          cells[4] = cells[4].live();
        });

        expect(grid.cells[4].nextGeneration().alive).toBeFalsy();
      });
    });

    describe('second rule:', () => {
      it('Any live cell with two or three live neighbours lives on to the next generation', () => {
        const grid = new Grid(3, 3);
        grid.cells = tap(grid.generateCells(), cells => {
          cells[0] = cells[0].live();
          cells[1] = cells[1].live();
          cells[4] = cells[4].live();
        });
        expect(grid.cells[4].nextGeneration().alive).toBeTruthy();

        grid.cells = tap(grid.cells, cells => {
          cells[2] = cells[2].live();
        });
        expect(grid.cells[4].nextGeneration().alive).toBeTruthy();
      });

      it('die cell doesn\'t resurect with two neighbours alive', () => {
        const grid = new Grid(3, 3);
        grid.cells = tap(grid.generateCells(), cells => {
          cells[0] = cells[0].live();
          cells[1] = cells[1].live();
        });
        expect(grid.cells[4].nextGeneration().alive).toBeFalsy();
      });

      it('lives at next tick if it has three live neighbours', () => {
        const grid = new Grid(3, 3);
        grid.generateCells();
        grid.cells = tap(grid.cells, cells => {
          cells[0] = cells[0].live();
          cells[1] = cells[1].live();
          cells[2] = cells[2].live();
          cells[4] = cells[4].live();
        });

        expect(grid.cells[4].nextGeneration().alive).toBeTruthy();
      });
    });

    describe('third rule', () => {
      it('Any live cell with more than three live neighbours dies, as if by overpopulation', () => {
        const grid = new Grid(3, 3);
        grid.generateCells();
        grid.cells = tap(grid.cells, cells => {
          cells[0] = cells[0].live();
          cells[1] = cells[1].live();
          cells[2] = cells[2].live();
          cells[3] = cells[3].live();
          cells[4] = cells[4].live();
        });

        expect(grid.cells[4].nextGeneration().alive).toBeFalsy();
      });
    });

    describe('fourth rule', () => {
      it('Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction', () => {
        const grid = new Grid(3, 3);
        grid.generateCells();
        grid.cells = tap(grid.cells, cells => {
          cells[0] = cells[0].live();
          cells[1] = cells[1].live();
          cells[2] = cells[2].live();
          cells[4] = cells[4].die();
        });

        expect(grid.cells[4].nextGeneration().alive).toBeTruthy();
      });
    });
  });
});
