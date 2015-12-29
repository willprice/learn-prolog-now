word(astante, a,s,t,a,n,t,e).
word(astoria, a,s,t,o,r,i,a).
word(baratto, b,a,r,a,t,t,o).
word(cobalto, c,o,b,a,l,t,o).
word(pistola, p,i,s,t,o,l,a).
word(statale, s,t,a,t,a,l,e).

% satisfies this crossword:
% http://www.learnprolognow.org/html/crosswd2.eps.png
crossword(V1, V2, V3, H1, H2, H3) :-
  word(H1, X1Y2, X2Y2, X3Y2, X4Y2, X5Y2, X6Y2, X7Y2),
  word(H2, X1Y4, X2Y4, X3Y4, X4Y4, X5Y4, X6Y4, X7Y4),
  word(H3, X1Y6, X2Y6, X3Y6, X4Y6, X5Y6, X6Y6, X7Y6),
  word(V1, X2Y1, X2Y2, X2Y3, X2Y4, X2Y5, X2Y6, X2Y7),
  word(V2, X4Y1, X4Y2, X4Y3, X4Y4, X4Y5, X4Y6, X4Y7),
  word(V3, X6Y1, X6Y2, X6Y3, X6Y4, X6Y5, X6Y6, X6Y7).
% Note, could have use _ in the places where we don't care about intersections
