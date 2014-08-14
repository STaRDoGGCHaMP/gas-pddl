# gas-pddl

This project is an experiment which aims at encoding the online browser game gameaboutsquares (http://gameaboutsquares.com/) in [PDDL](http://en.wikipedia.org/wiki/Planning_Domain_Definition_Language). The goal of this experiment is to model the game in PDDl in different encodings and to relate those encodings with respect to computation time (how long does it take for a planner to find a plan). Currently there are two such encodings (which we will refer to as v1 and v2) but there might be more to come (which we then will refer to as v3, v4 and so on...).

### Structure/About
Each version has its own PDDL file (`gameaboutsquares_vX.pddl`). The problem files for each version are located in the corresponding folder `vX`. Since making these files can be pretty tedious, the problem files are generated automatically by a problem generator which can be found in the `problemgenerator` folder. The planner used for this project is Joerg Hoffmann's planner Fast Forward (http://fai.cs.uni-saarland.de/hoffmann/ff.html, version FF-X).

### Version 1
v1 is probably the most basic solution one could come up with. The board is modeled with locations/coordinates and an adjacency relation where adjacency is also defined over directions which is important for gameaboutsquares. Squares can be empty or occupied by a square or a direction, which models direction changers. Squares can also have directions. All of this is modeled with standard predicates in a very simple way. The simplicity, however, causes the code to be very redundant. The action `move0` is basically copied four times and extended in an analogous manner to capture that one single move can affect the positions of multiple (connected) squares. If there were more than 4 squares at max, one would need to implement additional move actions, which also does not sound very nice.

### Version 2
v2 tries to fix v1 biggest issue - the redundancy - by using so called derived predicates. Derived predicates are basically predicates which are defined through other predicates as opposed to ordinary predicates which are defined by initial states and effects. The beauty of derived predicates is that they are capable of recursion. This fits nicely into the world of gameaboutsquares, because it allows us to model the fact that several squares are connected with a single derived predicate. This is very helpful, since a move of a square affects the position of all connected squares. Having the derived `connected` predicate therefore allows us to define movement of a square which can affect the position of arbitrary many squares with one single action.

### Benchmarks
The following are timing benchmarks (in milliseconds). Note that those times are measured by the planner.

Level | v1      | v2   |   |   | Level | v1         | v2
------|---------|------|---|---|-------|------------|---------
0     | 0       | 0    |   |   | 18    | __295__    | 420
1     | __0__   | 15   |   |   | 19    | __1965__   | 2121
2     | __171__ | 311  |   |   | 20    | 46752      | __9608__
3     | __62__  | 280  |   |   | 21    | __91010__  | 120900
4     | __234__ | 452  |   |   | 22    | __639__    | 1419
5     | __234__ | 452  |   |   | 23    | __639__    | 1310
6     | __327__ | 670  |   |   | 24    | 2729       | __1325__
7     | 0       | 0    |   |   | 25    | __499__    | 577
8     | __31__  | 62   |   |   | 26    | 16036      | __5194__
9     | __15__  | 31   |   |   | 27    | __1138__   | 1309
10    | __577__ | 1138 |   |   | 28    | __1153__   | 1309
11    | __592__ | 1138 |   |   | 29    | 200803     | __16083__
12    | __30__  | 93   |   |   | 30    | __889__    | 1201
13    | __561__ | 1107 |   |   | 31    | __1310__   | 1840
14    | __998__ | 1154 |   |   | 32    | __1372__   | 1481
15    | __31__  | 61   |   |   | 33    | __2479__   | 2900
16    | __31__  | 62   |   |   | 34    | 920        | __577__
17    | __421__ | 436  |   |   | 35    | 2401       | __1762__

As we can see v1 beats v2 the vast majority of time with the only exceptions being levels 20, 24, 26, 29, 34 and 35. However, these exceptions are quite remarkable to some extent. All these level have in common that they are complex from a computational point of view. They all contain at least 7 elements with elements being squares and direction changers. Levels 20, 26 and 29 are 3 out of 5 levels of the whole game which contain 4 squares (which makes computation harder). The advantage of v2 over v1 in level 29 is also quite interesting: v1 takes about 200 seconds to find a plan whereas v2 only needs 16 seconds. v1 is rarely 2 times faster than v2, and if so, this is only the case for quite simple levels where a plan can be found very fast by both versions. It seems like there is a small overhead for v2 which might be attributable to the usage of derived predicates. It also seems that the more complex the level is, the higher chances are that v2 will perform better than v1. This is, however, not entirely true, since level 21 for example is also quite complex (large rectangle and 10 objects = 4 squares + 6 direction changers) but v1 performs about 1.3 times better than v2.
