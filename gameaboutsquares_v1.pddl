; Probably the most straight-forward solution one could come up with. We define
; a game board consisting of locations (coordinates) where the movement of a
; square from one location to another is only possible if the locations are
; adjacent with respect to the direction of the square. Directions can also be
; located at squares which represents the concept of direction changers which
; first appear in level 7 of the game.
;
; In theory the board of the game has arbitrary width and height, which we
; cannot model using this approach. However, we will tackle this problem when
; generating the problem files by over-approximating the bounds (see
; bounds_approx.png).
;
; The elegance of this version suffers from the fact squares can push each
; other around, which means that moving one square can affect the position of
; several other squares if they are connected in the right direction. This
; means that for each number of moving squares we need an additional action.
; Since there are only 4 squares at max, we define 4 move actions, where only
; the first one is really interesting and the remaining ones are analogously
; defined. Version 2 handles this much better using derived predicates.
;
; Execution example:
; ./ff -o gameaboutsquares_v1.pddl -f v1/level0.pddl

(define (domain gameaboutsquares)
  (:types
    square
    location
    direction)

  (:predicates
    (at ?l - location ?s - square)
    (at2 ?l - location ?d - direction)
    (nosquare ?l - location)
    (adjacent ?l1 ?l2 - location ?d - direction)
    (dir ?d - direction ?s - square))

  (:action
    move0
    :parameters (?s1 - square ?l1 ?l2 - location ?d1 - direction)
    :precondition (and
		    (at ?l1 ?s1)
		    (adjacent ?l1 ?l2 ?d1)
		    (dir ?d1 ?s1)
		    (nosquare ?l2))
    :effect (and
	      (nosquare ?l1)
	      (not(at ?l1 ?s1))
	      (at ?l2 ?s1)
	      (not(nosquare ?l2))
	      ; the forall is probably not very nice, since a square can never
	      ; be occupied by more than a single direction at a time. Another
	      ; solution would be to use dn as a parameter. However, my
	      ; benchmarks have shown that it is better to have less parameters
	      ; when it comes to computation time.
	      (forall
		(?dn - direction)
		(when
		  (at2 ?l2 ?dn)
		  (and
		    (dir ?dn ?s1)
		    (not(dir ?d1 ?s1)))))))

  (:action
    move1
    :parameters (?s1 ?s2 - square ?l1 ?l2 ?l3 - location ?d1 - direction)
    :precondition (and
		    (not(= ?s1 ?s2))
		    (at ?l1 ?s1)
		    (adjacent ?l1 ?l2 ?d1)
		    (adjacent ?l2 ?l3 ?d1)
		    (dir ?d1 ?s1)
		    (at ?l2 ?s2)
		    (nosquare ?l3))
    :effect (and
	      (nosquare ?l1)
	      (not(at ?l1 ?s1))
	      (at ?l2 ?s1)
	      (not(at ?l2 ?s2))
	      (at ?l3 ?s2)
	      (not(nosquare ?l3))
	      (forall
		(?dn - direction)
		(when
		  (at2 ?l2 ?dn)
		  (and
		    (dir ?dn ?s1)
		    (not(dir ?d1 ?s1)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s2)
		    (at2 ?l3 ?dn))
		  (and
		    (dir ?dn ?s2)
		    (not(dir ?do ?s2)))))))

  (:action
    move2
    :parameters (?s1 ?s2 ?s3 - square ?l1 ?l2 ?l3 ?l4 - location ?d1 - direction)
    :precondition (and
		    (not(= ?s1 ?s2))
		    (not(= ?s2 ?s3))
		    (at ?l1 ?s1)
		    (adjacent ?l1 ?l2 ?d1)
		    (adjacent ?l2 ?l3 ?d1)
		    (adjacent ?l3 ?l4 ?d1)
		    (dir ?d1 ?s1)
		    (at ?l2 ?s2)
		    (at ?l3 ?s3)
		    (nosquare ?l4))
    :effect (and
	      (nosquare ?l1)
	      (not(at ?l1 ?s1))
	      (at ?l2 ?s1)
	      (not(at ?l2 ?s2))
	      (at ?l3 ?s2)
	      (not(at ?l3 ?s3))
	      (at ?l4 ?s3)
	      (not(nosquare ?l4))
	      (forall
		(?dn - direction)
		(when
		  (at2 ?l2 ?dn)
		  (and
		    (dir ?dn ?s1)
		    (not(dir ?d1 ?s1)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s2)
		    (at2 ?l3 ?dn))
		  (and
		    (dir ?dn ?s2)
		    (not(dir ?do ?s2)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s3)
		    (at2 ?l4 ?dn))
		  (and
		    (dir ?dn ?s3)
		    (not(dir ?do ?s3)))))))

  (:action
    move3
    :parameters (?s1 ?s2 ?s3 ?s4 - square ?l1 ?l2 ?l3 ?l4 ?l5 - location ?d1 - direction)
    :precondition (and
		    (not(= ?s1 ?s2))
		    (not(= ?s2 ?s3))
		    (not(= ?s3 ?s4))
		    (at ?l1 ?s1)
		    (adjacent ?l1 ?l2 ?d1)
		    (adjacent ?l2 ?l3 ?d1)
		    (adjacent ?l3 ?l4 ?d1)
		    (adjacent ?l4 ?l5 ?d1)
		    (dir ?d1 ?s1)
		    (at ?l2 ?s2)
		    (at ?l3 ?s3)
		    (at ?l4 ?s4)
		    (nosquare ?l5))
    :effect (and
	      (nosquare ?l1)
	      (not(at ?l1 ?s1))
	      (at ?l2 ?s1)
	      (not(at ?l2 ?s2))
	      (at ?l3 ?s2)
	      (not(at ?l3 ?s3))
	      (at ?l4 ?s3)
	      (not(at ?l4 ?s4))
	      (at ?l5 ?s4)
	      (not(nosquare ?l5))
	      (forall
		(?dn - direction)
		(when
		  (at2 ?l2 ?dn)
		  (and
		    (dir ?dn ?s1)
		    (not(dir ?d1 ?s1)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s2)
		    (at2 ?l3 ?dn))
		  (and
		    (dir ?dn ?s2)
		    (not(dir ?do ?s2)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s3)
		    (at2 ?l4 ?dn))
		  (and
		    (dir ?dn ?s3)
		    (not(dir ?do ?s3)))))
	      (forall
		(?do ?dn - direction)
		(when
		  (and
		    (dir ?do ?s4)
		    (at2 ?l5 ?dn))
		  (and
		    (dir ?dn ?s4)
		    (not(dir ?do ?s4))))))))
