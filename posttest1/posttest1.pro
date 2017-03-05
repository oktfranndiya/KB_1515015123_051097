predicates 
vegetable(symbol) - nondeterm (o)
person (symbol) - nondeterm (o) 
fruit (symbol, symbol) - nondeterm (i,i)
buy (symbol, symbol) - nondeterm (o,o) 
for_sale (symbol) - nondeterm (i)
hobby (symbol, symbol) - nondeterm (o,i), nondeterm (i,i)

clauses 
buy(X,Y):-
person(X), 
vegetable(Y), 
fruit(X,Y), 
for_sale(Y).

person(dhea). 
person(nisa).
person(aulia). 
person(difa). 

vegetable(carrot). 
vegetable(spinach).
vegetable(onion).
vegetable(tomato).  

fruit(dhea, tomato). 
fruit(nisa, banana). 
fruit(aulia, apple). 
fruit(difa, watermelon).

for_sale(carrot). 
for_sale(tomato).  

hobby(dhea, shoping). 
hobby(nisa, swimming). 
hobby(aulia, reading). 
hobby(difa, watching). 

goal
buy(Who,What), 
hobby(Person, watching). 

