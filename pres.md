% Nit --- un langage d'avenir
% Jean Privat
% LATECE --- 11 décembre 2013

# Motivations

## Motivation

### Pourquoi un nouveau langage

Impossible d'intégrer certains nouveaux trais de langages sans briser les fondements langages existants

Impossible de travailler sur les fondements des langages existants sans briser les programmes existants

Il n'y a aucun langage a objet moderne, a typage statique, cohérent dans sa spec

## Quelques chiffres

### Nit, le langage

* Spécification sur 8 pages (mage 2mm, double colonne, 5pt)

### nitg + lib

* 57 modules
* 2010 définitions de classes
* 83386 noeuds dans les AST
* 3353 introduction de méthodes

# Philosophies

## Ne pas se tromper d'ennemi

Le programmeur ne devrait pas avoir à se battre avec son langage de programmation

## Keep It Simple Stupid

Toute compexité non nécessaire devrait être évitée

## Prinpipe de moindre surprise

Utilisable par des programmeurs débutants ou habitués à des langages existants

## Typage statique

Pouvoir vérifier statiquement programmes et bibliothèques

## Modulaire

Les préocupation doit être séparés proprement

Les morceaux de programme doivent pouvois s'agenger sans trop de difficulté

# Truc du langage

## X

Les points saillants du langage

* langage de script
* à typage statique
* pur objet
* en héritage multiple
* à modules
* à classes ouvertes

Tous spécifiés en accord avec no philosophies

# Killer features

## Rester sobre

N'exposer la puissance que si nécessaire

~~~
#!/usr/bin/env nit
print "hello world"
~~~

Sous le tapi, il n'y a qu'objets, polymorphisme, modules.

## Raffinement de classe

Ajouter des choses à des classes existantes

* nouvelles méthodes
* nouveaux attributs
* redéfinition de méthode
* ajout de super-classes

~~~
redef class Int
   fun fib: Int do
      if self < 2 then return self
      return (self - 1).fib + (self - 2).fib
   end
end
~~~

## Typage adaptatif

Le type statique des variables locale change automatiquement

Plus fort que l'inférence

~~~
var a
a = "Hello" # a est un String
print a.to_upper
a = 5 # a est un Int
print a.fib
~~~

## Casts adaptatifs

Innutile de tester, caster, ranger dans une variabloe locale

~~~
var a: Objet = 5
if a isa Int then
   print a.fib
else if a isa String then
   print a.to_upper
end
~~~

Plus fort

~~~
var a: Object = 5
if not a isa Int then return
print a.fib
~~~

## Types nullables

Controle statiquement la présence de `null`

~~~
var a = "hello".search("ll")
# a est nullable de string
print a # <= refusé
if a != null then print a # accepté
print a or else "(null)" # accepté
~~~

## Vrai héritage multiple

## Types virtuels

# Plus

## Interface de fonction étrangères

* vers C, C++, Java, LLVM, Python, Objective-C

## Autodocumentation

nitdoc, outil d'avenir
