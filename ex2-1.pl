% ?- bread = bread.
% true.

% ?- 'Bread' = bread.
% false.

% ?- 'bread' = bread.
% true.

% ?- Bread = bread.
% Bread = bread.

% ?- bread = sausage.
% false.

% ?- food(bread) = bread.
% food(bread) = bread.
% unifies in SWI prolog

% ?- food(bread) = X.
% X = food(bread).

% ?- food(X) = food(bread).
% X = bread.

% ?- food(bread, X) = food(Y, sausage).
% Y = bread, X = sausage.

% ?- food(bread, X, beer) = food(Y, sausage, X).
% false.

% ?- food(bread, X, beer) = food(Y, kahuna_burger).
% false.

% ?- food(X) = X.
% X = food(X).
% Unifies in SWI prolog

% ?- meal(food(bread), drink(beer)) = meal(X, Y).
% X = food(bread), Y = drink(beer).

% ?- meal(food(bread), X) = meal(X, drink(beer))
% false.
