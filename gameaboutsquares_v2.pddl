; This version is identical to v1 with the only exception that derived
; predicates are used to model the concept of squares being connected. This
; enables us to define a single move action which can handle arbitrary many
; squares being affected in a single move. For general information, see
; gameaboutsquares_v1.pddl.
;
; Execution example:
; ./ff -o gameaboutsquares_v2.pddl -f v2/level0.pddl
(define (domain gameaboutsquares)
  (:types
    square
    location
    direction)

  ; Note that we got rid of the noSquare predicate.
  (:predicates
    (at ?l - location ?s - square)
    (at2 ?l - location ?d - direction)
    (adjacent ?l1 ?l2 - location ?d - direction)
    (dir ?d - direction ?s - square)
    (touching ?d - direction ?s ?s1 - square)
    (connected ?d - direction ?s ?s1 - square))

  ; A square is touching another square with respect to direction d if their
  ; locations are adjacent with respect to direction d.
  (:derived
    (touching ?d - direction ?s ?s1 - square)
    (exists
      (?l - location ?l1 - location)
      (and
	(at ?l ?s)
	(at ?l1 ?s1)
	(adjacent ?l ?l1 ?d))))

  ; Each square is connected to itself.
  ; A square is connected to another square with respect to direction d if it
  ; is touching the square with respect to direction d or if there is a stack
  ; of squares in between where each square in this stack touches its successor
  ; with respect to direction d.
  ; Using derived predicates this can be expressed with recursion.
  (:derived
    (connected ?d - direction ?s ?s1 - square)
    (or
      (= ?s ?s1)
      (touching ?d ?s ?s1)
      (exists
	(?sm - square)
	(and
	  (connected ?d ?s ?sm)
	  (touching ?d ?sm ?s1)))))

  (:action move
	   :parameters (?s - square ?d - direction)
	   :precondition (and (dir ?d ?s))
	   :effect (and ; (1) Remove old locations for each connected square.
		        (forall
			  (?s1 - square ?lo - location)
			  (when
			    (and
			      (connected ?d ?s ?s1)
			      (at ?lo ?s1))
			    (not(at ?lo ?s1))))
			; (2) Add new locations for each connected square.
			; Doing (1) and (2) separately is essential, since
			; otherwise a square may not be pushed out of bounds
			; and remain at the border.
		        (forall
			  (?s1 - square ?lo ?ln - location)
			  (when
			    (and
			      (connected ?d ?s ?s1)
			      (at ?lo ?s1)
			      (adjacent ?lo ?ln ?d))
			    (and
			      (at ?ln ?s1))))
			; (3) Update directions for each connected square.
			(forall
			  (?s1 - square ?lo ?ln - location ?do ?dn - direction)
			  (when
			    (and
			      (connected ?d ?s ?s1)
			      (at ?lo ?s1)
			      (adjacent ?lo ?ln ?d)
			      (dir ?do ?s1)
			      (at2 ?ln ?dn))
			    (and
			      (dir ?dn ?s1)
			      (not(dir ?do ?s1))))))))
