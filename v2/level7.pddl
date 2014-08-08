(define (problem level7)
  (:domain gameaboutsquares)
  (:objects
    BlueSquare - square
    l_0_4 l_1_4 l_2_4 l_3_4 l_4_4 - location
    l_0_3 l_1_3 l_2_3 l_3_3 l_4_3 - location
    l_0_2 l_1_2 l_2_2 l_3_2 l_4_2 - location
    l_0_1 l_1_1 l_2_1 l_3_1 l_4_1 - location
    l_0_0 l_1_0 l_2_0 l_3_0 l_4_0 - location
    left right up down - direction)
  (:init
    (at l_1_3 BlueSquare)
    (dir down BlueSquare)
    (at2 l_1_1 right)
    (at2 l_3_1 up)
    (adjacent l_0_0 l_1_0 right) (adjacent l_1_0 l_0_0 left) (adjacent l_1_0 l_2_0 right) (adjacent l_2_0 l_1_0 left) (adjacent l_2_0 l_3_0 right) (adjacent l_3_0 l_2_0 left) (adjacent l_3_0 l_4_0 right) (adjacent l_4_0 l_3_0 left)
    (adjacent l_0_1 l_1_1 right) (adjacent l_1_1 l_0_1 left) (adjacent l_1_1 l_2_1 right) (adjacent l_2_1 l_1_1 left) (adjacent l_2_1 l_3_1 right) (adjacent l_3_1 l_2_1 left) (adjacent l_3_1 l_4_1 right) (adjacent l_4_1 l_3_1 left)
    (adjacent l_0_2 l_1_2 right) (adjacent l_1_2 l_0_2 left) (adjacent l_1_2 l_2_2 right) (adjacent l_2_2 l_1_2 left) (adjacent l_2_2 l_3_2 right) (adjacent l_3_2 l_2_2 left) (adjacent l_3_2 l_4_2 right) (adjacent l_4_2 l_3_2 left)
    (adjacent l_0_3 l_1_3 right) (adjacent l_1_3 l_0_3 left) (adjacent l_1_3 l_2_3 right) (adjacent l_2_3 l_1_3 left) (adjacent l_2_3 l_3_3 right) (adjacent l_3_3 l_2_3 left) (adjacent l_3_3 l_4_3 right) (adjacent l_4_3 l_3_3 left)
    (adjacent l_0_4 l_1_4 right) (adjacent l_1_4 l_0_4 left) (adjacent l_1_4 l_2_4 right) (adjacent l_2_4 l_1_4 left) (adjacent l_2_4 l_3_4 right) (adjacent l_3_4 l_2_4 left) (adjacent l_3_4 l_4_4 right) (adjacent l_4_4 l_3_4 left)
    (adjacent l_0_0 l_0_1 up) (adjacent l_0_1 l_0_0 down) (adjacent l_1_0 l_1_1 up) (adjacent l_1_1 l_1_0 down) (adjacent l_2_0 l_2_1 up) (adjacent l_2_1 l_2_0 down) (adjacent l_3_0 l_3_1 up) (adjacent l_3_1 l_3_0 down) (adjacent l_4_0 l_4_1 up) (adjacent l_4_1 l_4_0 down)
    (adjacent l_0_1 l_0_2 up) (adjacent l_0_2 l_0_1 down) (adjacent l_1_1 l_1_2 up) (adjacent l_1_2 l_1_1 down) (adjacent l_2_1 l_2_2 up) (adjacent l_2_2 l_2_1 down) (adjacent l_3_1 l_3_2 up) (adjacent l_3_2 l_3_1 down) (adjacent l_4_1 l_4_2 up) (adjacent l_4_2 l_4_1 down)
    (adjacent l_0_2 l_0_3 up) (adjacent l_0_3 l_0_2 down) (adjacent l_1_2 l_1_3 up) (adjacent l_1_3 l_1_2 down) (adjacent l_2_2 l_2_3 up) (adjacent l_2_3 l_2_2 down) (adjacent l_3_2 l_3_3 up) (adjacent l_3_3 l_3_2 down) (adjacent l_4_2 l_4_3 up) (adjacent l_4_3 l_4_2 down)
    (adjacent l_0_3 l_0_4 up) (adjacent l_0_4 l_0_3 down) (adjacent l_1_3 l_1_4 up) (adjacent l_1_4 l_1_3 down) (adjacent l_2_3 l_2_4 up) (adjacent l_2_4 l_2_3 down) (adjacent l_3_3 l_3_4 up) (adjacent l_3_4 l_3_3 down) (adjacent l_4_3 l_4_4 up) (adjacent l_4_4 l_4_3 down))
  (:goal (and
	   (at l_3_3 BlueSquare))))