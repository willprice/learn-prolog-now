directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(Doll, InnerDoll) :- directlyIn(Doll, InnerDoll).
in(Doll, InnerDoll) :- directlyIn(Doll, X),
                       in(X, InnerDoll).
