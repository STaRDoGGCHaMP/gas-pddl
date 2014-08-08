# gas-pddl

This project is an experiment which aims at encoding the online browser game gamesaboutsquares (http://gameaboutsquares.com/) in [PDDL](http://en.wikipedia.org/wiki/Planning_Domain_Definition_Language). The goal of this experiment is to model the game in PDDl in different encodings and to relate those encodings with respect to computation time (how long does it take for a planner to find a plan). Currently there are two such encodings (which we will refer to as v1 and v2) but there might be more to come (which we then will refer to as v3, v4 and so on...).

### Structure/About
Each version has its own PDDL file (`gameaboutsquares_vX.pddl`). The problem files for each version are located in the corresponding folder `vX`. Since generating these files can be pretty tedious, the problem files are generated automatically by a problem generator which can be found in the `problemgenerator` folder. The planner used for this project is Joerg Hoffmann's planner Fast Forward (http://fai.cs.uni-saarland.de/hoffmann/ff.html, version FF-X).

### Version 1
v1 is probably the most basic solution one could come up with. The board is modeled with locations/coordinates and an adjacency relation where adjacency is also defined over directions which is important for gameaboutsquares. Squares can be empty or occupied by a square or a direction, which models direction changers. Squares can also have directions. All of this is modeled with standard predicates in a very simple way. The simplicity, however, causes the code to be very redundant. The action `move0` is basically copied four times and extended in an analogous manner to capture that one single move can affect the positions of multiple (connected) squares. If there were more than 4 squares at max, one would need to implement additional move actions, which also does not sound very nice.

### Version 2
v2 tries to fix v1 biggest issue - the redundancy - by using so called derived predicates. Derived predicates are basically predicates which are defined through other predicates as opposed to ordinary predicates which are defined by initial states and effects. The beauty of derived predicates is that they are capable of recursion. This fits nicely into the world of gamesaboutsquares, because it allows us to model the fact that several squares are connected with a single derived predicate. This is very helpful, since a move of a square affects the position of all connected squares. Having the derived `connected` predicate therefore allows us to define movement of a square which can affect the position of arbitrary many squares with one single action.

### Benchmarks
TODO
