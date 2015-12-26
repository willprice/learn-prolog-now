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

# Syntax
- Lists: `[elem1, elem2, ...]`
- Terminator: `.`
- Implication: `X :- Y.` is the same as `Y => X`
- Fact: `X.`
- Conjunction of facts: `X, Y`
- Disjunction of facts: `X; Y`
- Variables: A _name_ starting with a _capital letter_

# Resources
- [Cheatsheet](http://www.cs.oswego.edu/~odendahl/coursework/notes/prolog/synopsis/con.html)
