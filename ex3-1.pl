child(bridget,caroline).
child(caroline,donna).

% Would refactoring:
% descend(X,Y)  :-  child(X,Y).
% descend(X,Y)  :-  child(X,Z),
%                   descend(Z,Y)
% into
descend(X,Y)  :-  child(X,Y).
descend(X,Y)  :-  descend(X,Z),
                  descend(Z,Y).

% Be problematic?
% In the happy case, where Y is a descendent of X, then no, as the rule would
% terminate.
% In the case where Y is NOT a descendent of X, then the engine would recurse
% endlessly through the second rule.
