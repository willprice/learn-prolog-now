swap(tree(leaf(X), leaf(Y)), tree(leaf(Y), leaf(X))).
swap(tree(leaf(X), Y), tree(Y_mirrored, leaf(X))) :- swap(Y, Y_mirrored).
swap(tree(Y, leaf(X)), tree(leaf(X), Y_mirrored)) :- swap(Y, Y_mirrored).
swap(tree(X, Y), tree(Y_mirrored, X_mirrored)) :-
  swap(X, X_mirrored),
  swap(Y, Y_mirrored).
