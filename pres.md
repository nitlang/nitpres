% Nit --- un langage d'avenir

\frame{\frametitle{Sommaire}\begin{minipage}{\textwidth}\small\tableofcontents\end{minipage}}

# Qu'est-ce que Nit?

### Qu'est-ce que Nit?

Nit est un langage expressif avec un syntaxe à la script, un système de type sympathique et qui vise l'élégance, la simplicité et l'intuitivité.

### Expressivité

Commodité offerte au programmeur pour exprimer ses concepts et besoins.

La programmation orienté-objets et orienté-préoccupations (*concerns*) permettre au programmeur d'abstraire et d'organiser ses idées.

### Langage de script

Langage offrant des instructions simples et une grammaire souple permettant un prototypage rapide car les structuration verbeuses et inutiles sont éliminés.

### Système de type

Le typage statique permet de prévenir des erreurs lors du développement ainsi que d'aider la compréhension du code et des API

### Sympathique

En résolvant plus de problème qu'il en cause, le typage statique de Nit évite les frustrations et les verbosités inutiles.

Il ne faut pas se tromper de combat: le programmeur ne devrait pas avoir à se battre avec son langage de programmation.

### Philosophie

* élégance: les concepts théoriques sur lesquels se basent Nit sont puissants et cohérents
* simplicité: KISS. Toute complexité non nécessaire devrait être évitée
* intutivité: POLA. Les concepts et la sémantique des constructions du langage doivent sembler naturels au programmeur, que celui-ci soit débutant ou déjà habitué à un autre langage.

Nit en bref: Ruby (ou Python) avec des types statiques, un compilateur et un vrai modèle objet.

### Motivations: pourquoi un nouveau langage

Impossible d'intégrer certains nouveaux traits de langages sans briser les fondements langages existants

Impossible de travailler sur les fondements des langages existants sans briser les programmes existants

Il n'y a aucun langage a objet moderne, a typage statique, cohérent dans sa spec

## Quelques chiffres

### Nit, le langage

* Spécification sur 8 pages (mage 2mm, double colonne, 5pt)

### Catalogue des paquets

* 146 packages
* 11 maintainers
* 28 contributors
* 33 tags
* 850 modules
* 9294 classes
* 50418 methods
* 302648 lines of code

Voir \url{http://nitlanguage.org/catalog/}

# Trucs cools du langage

## Raffinement de classes

### Raffinement de classes

Ajouter des choses à des classes existantes

* nouvelles méthodes
* nouveaux attributs
* redéfinition de méthode
* ajout de super-classes

~~~nit
redef class Int
   fun fib: Int do
      if self  2 then return self
      return (self - 1).fib + (self - 2).fib
   end
end
~~~

### Raffinement de classes

Programmation par aspect

* Sans les problème de tissage

Programmation par *monkey-patching*

* Vérifié statiquement

## Types nullables et typage adaptatif

### Typage adaptatif

Le type statique des variables locales change automatiquement

Plus utile que l'inférence de type

~~~nit
var a
a = "Hello" # a est un String
print a.to_upper
a = 5 # a est un Int
print a.fib
~~~

### Casts adaptatifs

Inutile de tester, puis caster, puis ranger dans une variable locale.

~~~nit
var a: Objet = 5
if a isa Int then
   print a.fib
else if a isa String then
   print a.to_upper
end
~~~

Plus fort

~~~nit
var a: Object = 5
if not a isa Int then return
print a.fib
~~~

### Types nullables

Contrôle statiquement la présence de `null`

~~~nit
var a = "hello".search("ll")
# a est nullable de string
print a # <= refusé
if a != null then print a # accepté
print a or else "(null)" # accepté
~~~

## Portabilité et support natif

### Support natif Android

TODO

### Interface de fonction étrangères

* vers C, C++, Java, LLVM, Python, Objective-C

## Rester sobre

### Rester sobre

N'exposer la puissance que si nécessaire

~~~nit
#!/usr/bin/env nit
print "hello world"
~~~

Sous le tapis, il n'y a qu'objets, polymorphisme et modules.

# Quelques projets cools en Nit

## Nitc et les outils

### Le package nitc

Stats des outils:

* 184 modules
* 2625 classes
* 8662 methods
* 88916 lines of code

Voir \url{http://nitlanguage.org/catalog/p/nitc.html}

### nitc: Compilateur et compilateur optimisant

TODO


Voir \url{http://nitlanguage.org/tools/nitc.html}

### nit: Interpréteur

~~~sh
nit -e 'print "hello world"'
~~~

Voir \url{http://nitlanguage.org/tools/nit.html}

### nitdoc: Autodocumentation

nitdoc, outil d'avenir

Voir \url{http://nitlanguage.org/tools/nitdoc.html}

### nitunit: Tests unitaires

TODO

Voir \url{http://nitlanguage.org/tools/nitunit.html}

### Le reste

* nitx
* nitls
* nitpick
* nitpretty
* nitserial
* nitmetrics
* nitlight

Voir \url{http://nitlanguage.org/tools/}

## Nitcorn et Application Web

### Nitcorn

Framework de serveur web.

Voir \url{http://nitlanguage.org/catalog/p/nitcorn.html}

### Opportunité

* Planifier des rencontres
* Sondages simples
* Reserver des pizzas

Voir \url{http://nitlanguage.org/catalog/p/opportunity.html}

### NitRPG

Ludification du développement sur Github.

Les contributeurs de projets hébergés chez github sont les joueurs et s'affrontent sur les dépôt de code pour gagner nitcoins et gloire.

Voir \url{http://nitlanguage.org/catalog/p/nitrpg.html}

### Benitlux

Liste de diffusion qui permet d'être informé sur les bières disponibles à la brasserie Benélux.

Voir \url{http://nitlanguage.org/catalog/p/benitlux.html}

## Jeux Vidéos

### Crazy Moles

Tape-taupes avec des particules.

Voir \url{http://nitlanguage.org/catalog/p/crazy_moles.html}

### Chainz of Friends

Casse-tête où il faut connecter des monstres trop minions sur une grille.

Voir \url{http://nitlanguage.org/catalog/p/friendz.html}

### Memorize shapes and colors

Êtes-vous capable de mémoriser une séquence de figures?

Voir \url{http://nitlanguage.org/catalog/p/memory.html}

### Tinks

Un jeu d'action multijoueurs où tank s'affrontent sur un terrain généré procéduralement.

Voir \url{http://nitlanguage.org/catalog/p/tinks.html}

### WBTW

TODO

# Contribuer à Nit

### Logiciel libre

TODO

### ~~Tout~~ Beaucoup reste à faire

TODO

### Intégration continue

TODO

