// In a binary tree, give the number of visible nodes
//
// A visible node has a greater value that any of its parents

const tree = {
  v: 5,
  l: {
    v: 3,
    l: {
          v: 20,
          l: null,
          r: null
        },
        r: {
          v: 21,
          l: null,
          r:null
        }
      },
  r: {
    v: 10,
    l: {
      v: 1,
      l: null,
      r: null
    },
    r: null
  }
};

const is_node = node => node !== null;

function count_visible_nodes({v, l, r}, parent_greater_value, count) {
  if (v > parent_greater_value) {
    parent_greater_value = v;
    count += 1;
  }

  if (is_node(l))
    count = count_visible_nodes(l, parent_greater_value, count);

  if (is_node(r))
    count = count_visible_nodes(r,  parent_greater_value, count);

  return count;
}

const visible_nodes = count_visible_nodes(tree, tree.v, 1);

console.log(visible_nodes);
