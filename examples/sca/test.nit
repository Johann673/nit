import sca
import addition
import multiplication
import calculatrice

# Exemple d'une calculatrice en SCA
# Avec utilisation de deux composants : addition et multiplication
# Le composant calculatrice fait appel aux deux autres pour réaliser les opérations


# on créé le composite
var composite = new SCAComposite.with_name("calculatrice")

# le composant addition
var c_addition = new Addition(composite)

# le composant mulitiplication
var c_multiplication = new Multiplication(composite)

# le composant calculatrice qui va utiliser les deux autres
var c_calculatrice = new Calculatrice(composite)


# Utilisation de la calculatrice
# on récupère le composant calculatrice
var calculatrice = composite.get("calculatrice").as(Calculatrice)
# on effectue une somme ...
var somme = calculatrice.addition(10, 10) 
# ... une multiplication
var resultat = calculatrice.multiplication(somme, 2)

# on affiche les résultats
print "calculatrice.addition(10, 10) : {somme}"
print "calculatrice.multiplication({somme}, 2) : {resultat}"
