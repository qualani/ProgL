male(adam).
male(john).
male(mark).
male(joshua).
male(david).

female(eve).
female(helen).
female(ivonne).
female(anna).

parent(adam,helen).
parent(eve,helen).
parent(adam,ivonne).
parent(eve,ivonne).
parent(adam,anna).
parent(eve,anna).

parent(john,joshua).
parent(helen,joshua).

parent(ivonne,david).
parent(mark,david).


sibling(X,Y):-parent(Z,X),parent(Z,Y),X\==Y.
sister(X,Y):-sibling(X,Y),female(X).
gradson(X,Y):-parent(Z,X),parent(Y,Z),male(X).
cousin(X,Y):-parent(Z,X),sibling(Z,W),parent(W,Y),male(X),X\==Y.
descendant(X,Y):-parent(Y,X).
descendant(X,Y):-parent(Z,X),descendant(Z,Y).
is_mother(X):-parent(X,_),female(X).
is_father(X):-parent(X,_),male(X).










