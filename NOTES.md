# Learn Prolog Now
## Definitions
- _Statement_: _Fact_, _Rule_, _Query_
- _Fact_: _Record_ of assumed information
- _Rule_: Deductive formula from which new facts can be derived from existing facts
- _Query_: A _Statement_ asking about the existance of a `fact(s)`.
- _Logic Program_: Collection of _Rules_
- _Meaning_ of logic program: Collection of _Facts_ that can be deduced from any set of initial _Facts_
- Multi parameter facts are _Relations_ between their parameters
- _Unification_: _Variables_ unify with _Facts_.

### Syntactic Definitions
- _Atom_: `[a-z][a-Z0-9_]* | '\S+' | [:special:]+`
- _Variable_: `[A-Z_][a-Z0-9_]*`
- _Number_: `-?[0-9]+.?[0-9]+`
- _Complex term_ (_Structure_): `FUNCTOR(PARAMETERS)`
- _Parameter_: `COMPLEX_TERM | ATOM | VARIABLE | NUMBER`

# Commands
- `listing.`: `listing\0` list all facts in the workspace.
- `listing(FUNCTOR).`: lists all definitions of `FUNCTOR`.
- `['filename']`: Load the knowledge base from `filename.pl`
- `trace` and `notrace` for looking at intermediate steps

# Unification
term1 unifies with term2 if and only if:
1. If term1 and term2 are constants, then term1 and term2 unify if and only if they are the same atom, or the same number.
2. If term1 is a variable and term2 is any type of term, term1 is instantiated to term2 and term1 and term2 unify, likewise if term2 is a variable and term2 is any type of term.
- If term1 and term2 are complex terms, then they unify if and only if the following are satisfied
  1. They have the same functor and arity
  2. All arguments unify with their counterpart
  3. The variable instantiations are compatible

- Two terms unify if and only if it follows from one of the previous three clauses that they unify.

Standard unification algorithms tend to be _pessimistic_, that is when unifying a variable with a term, they check whether the variable occurs in the term, this is called a _occurs_ check, if the variable does occur, then the algorithm will terminate not unifying the variable and the term.

Prolog differs from standard unification algorithms by not performing this _occurs_ check, we say it is _optimistic_, it assumes you know what you're doing. SWI prolog can perform infinitely deeply nested unifications e.g. `father(X) = X` evaluates to `father(X) = X`, it doesn't run away on an infinite loop.

## Proof Search
To prove that two terms unify, prolog performs a _proof search_. When posed a question, prolog searches through the knowledge base trying to unify the question with definitions, once unified, if the question is a complex term, prolog will descend into the parameters of the functor, trying to unify each one in term, again traversing the knowledge base from top to bottom, it will keep doing so until all variables are unified with terms, or it finds it cannot unify a variable with a term, in which case it will backtrack up the unification tree exhaustively trying at each parent layer to unify with different terms if possible.

For example, take the knowledge base:

```prolog
f(a).
f(b).

g(a).
g(b).

h(b).

k(X) :- f(X), g(X), h(X).
```

and the query: `?- k(X).`

Prolog will perform the following:
- traversing the KB, prolog will see the final rule, where `k(X)` is true if `f(X), g(X), h(X)`, so it unifies with the RHS of this rule, it will then try and unify each of those complex terms.
- `f(X)` matches `f(a)` so prolog will unify `X` with `a`
- `g(X)` matches `g(a)`
- There is no `h(a)` fact to satisfy `h(X)`, so `X` cannot be `a`, so prolog backtracks and trys to unify `X` with any other possible term.
- `f(X)` is satisfied with `f(b)`, thereby unifying `X` and `b`
- `g(X)` is satisfied with `g(b)`
- `h(X)` is satisfied with `h(b)`
- this completes the proof of the antecedant, since prolog has no more goals to prove, it concludes that the query is satisfiable with `X = b`.
- Asking prolog for another unification will result in the goal engine backtracking to see whether there are any other valid instantiations of `X`, but it will soon find after exhausting the knowledge base that there are none.

# Lists
Lists can be decomposed into head and tail: `[Head|Tail] = [mia, some, more, items]`, which yields: `Head = mia.` and `Tail = [some, more, items].`. The empty list has no head or tail, it is a special construct.

The pipe operator can split a list in any way you like, you can specify nested patterns to pull out items in a list.

# Syntax
- Lists: `[elem1, elem2, ...]`
- Terminator: `.`
- Implication: `X :- Y.` is the same as `Y => X`
- Fact: `X.`
- Conjunction of facts: `X, Y`
- Disjunction of facts: `X; Y`
- Variables: A _name_ starting with a _capital letter_

# Unification
# Resources
- [Cheatsheet](http://www.cs.oswego.edu/~odendahl/coursework/notes/prolog/synopsis/con.html)
