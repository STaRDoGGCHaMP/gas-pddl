(define (problem level8)
  (:domain gameaboutsquares)
  (:objects
    OrangeSquare - square
    BlackSquare - square
    l_0_6 l_1_6 l_2_6 l_3_6 l_4_6 l_5_6 l_6_6 l_7_6 - location
    l_0_5 l_1_5 l_2_5 l_3_5 l_4_5 l_5_5 l_6_5 l_7_5 - location
    l_0_4 l_1_4 l_2_4 l_3_4 l_4_4 l_5_4 l_6_4 l_7_4 - location
    l_0_3 l_1_3 l_2_3 l_3_3 l_4_3 l_5_3 l_6_3 l_7_3 - location
    l_0_2 l_1_2 l_2_2 l_3_2 l_4_2 l_5_2 l_6_2 l_7_2 - location
    l_0_1 l_1_1 l_2_1 l_3_1 l_4_1 l_5_1 l_6_1 l_7_1 - location
    l_0_0 l_1_0 l_2_0 l_3_0 l_4_0 l_5_0 l_6_0 l_7_0 - location
    left right up down - direction)
  (:init
    (at l_2_4 OrangeSquare)
    (dir down OrangeSquare)
    (at l_2_2 BlackSquare)
    (dir right BlackSquare)
    (at2 l_2_2 right)
    (at2 l_4_2 up)
    (adjacent l_0_0 l_1_0 right) (adjacent l_1_0 l_0_0 left) (adjacent l_1_0 l_2_0 right) (adjacent l_2_0 l_1_0 left) (adjacent l_2_0 l_3_0 right) (adjacent l_3_0 l_2_0 left) (adjacent l_3_0 l_4_0 right) (adjacent l_4_0 l_3_0 left) (adjacent l_4_0 l_5_0 right) (adjacent l_5_0 l_4_0 left) (adjacent l_5_0 l_6_0 right) (adjacent l_6_0 l_5_0 left) (adjacent l_6_0 l_7_0 right) (adjacent l_7_0 l_6_0 left)
    (adjacent l_0_1 l_1_1 right) (adjacent l_1_1 l_0_1 left) (adjacent l_1_1 l_2_1 right) (adjacent l_2_1 l_1_1 left) (adjacent l_2_1 l_3_1 right) (adjacent l_3_1 l_2_1 left) (adjacent l_3_1 l_4_1 right) (adjacent l_4_1 l_3_1 left) (adjacent l_4_1 l_5_1 right) (adjacent l_5_1 l_4_1 left) (adjacent l_5_1 l_6_1 right) (adjacent l_6_1 l_5_1 left) (adjacent l_6_1 l_7_1 right) (adjacent l_7_1 l_6_1 left)
    (adjacent l_0_2 l_1_2 right) (adjacent l_1_2 l_0_2 left) (adjacent l_1_2 l_2_2 right) (adjacent l_2_2 l_1_2 left) (adjacent l_2_2 l_3_2 right) (adjacent l_3_2 l_2_2 left) (adjacent l_3_2 l_4_2 right) (adjacent l_4_2 l_3_2 left) (adjacent l_4_2 l_5_2 right) (adjacent l_5_2 l_4_2 left) (adjacent l_5_2 l_6_2 right) (adjacent l_6_2 l_5_2 left) (adjacent l_6_2 l_7_2 right) (adjacent l_7_2 l_6_2 left)
    (adjacent l_0_3 l_1_3 right) (adjacent l_1_3 l_0_3 left) (adjacent l_1_3 l_2_3 right) (adjacent l_2_3 l_1_3 left) (adjacent l_2_3 l_3_3 right) (adjacent l_3_3 l_2_3 left) (adjacent l_3_3 l_4_3 right) (adjacent l_4_3 l_3_3 left) (adjacent l_4_3 l_5_3 right) (adjacent l_5_3 l_4_3 left) (adjacent l_5_3 l_6_3 right) (adjacent l_6_3 l_5_3 left) (adjacent l_6_3 l_7_3 right) (adjacent l_7_3 l_6_3 left)
    (adjacent l_0_4 l_1_4 right) (adjacent l_1_4 l_0_4 left) (adjacent l_1_4 l_2_4 right) (adjacent l_2_4 l_1_4 left) (adjacent l_2_4 l_3_4 right) (adjacent l_3_4 l_2_4 left) (adjacent l_3_4 l_4_4 right) (adjacent l_4_4 l_3_4 left) (adjacent l_4_4 l_5_4 right) (adjacent l_5_4 l_4_4 left) (adjacent l_5_4 l_6_4 right) (adjacent l_6_4 l_5_4 left) (adjacent l_6_4 l_7_4 right) (adjacent l_7_4 l_6_4 left)
    (adjacent l_0_5 l_1_5 right) (adjacent l_1_5 l_0_5 left) (adjacent l_1_5 l_2_5 right) (adjacent l_2_5 l_1_5 left) (adjacent l_2_5 l_3_5 right) (adjacent l_3_5 l_2_5 left) (adjacent l_3_5 l_4_5 right) (adjacent l_4_5 l_3_5 left) (adjacent l_4_5 l_5_5 right) (adjacent l_5_5 l_4_5 left) (adjacent l_5_5 l_6_5 right) (adjacent l_6_5 l_5_5 left) (adjacent l_6_5 l_7_5 right) (adjacent l_7_5 l_6_5 left)
    (adjacent l_0_6 l_1_6 right) (adjacent l_1_6 l_0_6 left) (adjacent l_1_6 l_2_6 right) (adjacent l_2_6 l_1_6 left) (adjacent l_2_6 l_3_6 right) (adjacent l_3_6 l_2_6 left) (adjacent l_3_6 l_4_6 right) (adjacent l_4_6 l_3_6 left) (adjacent l_4_6 l_5_6 right) (adjacent l_5_6 l_4_6 left) (adjacent l_5_6 l_6_6 right) (adjacent l_6_6 l_5_6 left) (adjacent l_6_6 l_7_6 right) (adjacent l_7_6 l_6_6 left)
    (adjacent l_0_0 l_0_1 up) (adjacent l_0_1 l_0_0 down) (adjacent l_1_0 l_1_1 up) (adjacent l_1_1 l_1_0 down) (adjacent l_2_0 l_2_1 up) (adjacent l_2_1 l_2_0 down) (adjacent l_3_0 l_3_1 up) (adjacent l_3_1 l_3_0 down) (adjacent l_4_0 l_4_1 up) (adjacent l_4_1 l_4_0 down) (adjacent l_5_0 l_5_1 up) (adjacent l_5_1 l_5_0 down) (adjacent l_6_0 l_6_1 up) (adjacent l_6_1 l_6_0 down) (adjacent l_7_0 l_7_1 up) (adjacent l_7_1 l_7_0 down)
    (adjacent l_0_1 l_0_2 up) (adjacent l_0_2 l_0_1 down) (adjacent l_1_1 l_1_2 up) (adjacent l_1_2 l_1_1 down) (adjacent l_2_1 l_2_2 up) (adjacent l_2_2 l_2_1 down) (adjacent l_3_1 l_3_2 up) (adjacent l_3_2 l_3_1 down) (adjacent l_4_1 l_4_2 up) (adjacent l_4_2 l_4_1 down) (adjacent l_5_1 l_5_2 up) (adjacent l_5_2 l_5_1 down) (adjacent l_6_1 l_6_2 up) (adjacent l_6_2 l_6_1 down) (adjacent l_7_1 l_7_2 up) (adjacent l_7_2 l_7_1 down)
    (adjacent l_0_2 l_0_3 up) (adjacent l_0_3 l_0_2 down) (adjacent l_1_2 l_1_3 up) (adjacent l_1_3 l_1_2 down) (adjacent l_2_2 l_2_3 up) (adjacent l_2_3 l_2_2 down) (adjacent l_3_2 l_3_3 up) (adjacent l_3_3 l_3_2 down) (adjacent l_4_2 l_4_3 up) (adjacent l_4_3 l_4_2 down) (adjacent l_5_2 l_5_3 up) (adjacent l_5_3 l_5_2 down) (adjacent l_6_2 l_6_3 up) (adjacent l_6_3 l_6_2 down) (adjacent l_7_2 l_7_3 up) (adjacent l_7_3 l_7_2 down)
    (adjacent l_0_3 l_0_4 up) (adjacent l_0_4 l_0_3 down) (adjacent l_1_3 l_1_4 up) (adjacent l_1_4 l_1_3 down) (adjacent l_2_3 l_2_4 up) (adjacent l_2_4 l_2_3 down) (adjacent l_3_3 l_3_4 up) (adjacent l_3_4 l_3_3 down) (adjacent l_4_3 l_4_4 up) (adjacent l_4_4 l_4_3 down) (adjacent l_5_3 l_5_4 up) (adjacent l_5_4 l_5_3 down) (adjacent l_6_3 l_6_4 up) (adjacent l_6_4 l_6_3 down) (adjacent l_7_3 l_7_4 up) (adjacent l_7_4 l_7_3 down)
    (adjacent l_0_4 l_0_5 up) (adjacent l_0_5 l_0_4 down) (adjacent l_1_4 l_1_5 up) (adjacent l_1_5 l_1_4 down) (adjacent l_2_4 l_2_5 up) (adjacent l_2_5 l_2_4 down) (adjacent l_3_4 l_3_5 up) (adjacent l_3_5 l_3_4 down) (adjacent l_4_4 l_4_5 up) (adjacent l_4_5 l_4_4 down) (adjacent l_5_4 l_5_5 up) (adjacent l_5_5 l_5_4 down) (adjacent l_6_4 l_6_5 up) (adjacent l_6_5 l_6_4 down) (adjacent l_7_4 l_7_5 up) (adjacent l_7_5 l_7_4 down)
    (adjacent l_0_5 l_0_6 up) (adjacent l_0_6 l_0_5 down) (adjacent l_1_5 l_1_6 up) (adjacent l_1_6 l_1_5 down) (adjacent l_2_5 l_2_6 up) (adjacent l_2_6 l_2_5 down) (adjacent l_3_5 l_3_6 up) (adjacent l_3_6 l_3_5 down) (adjacent l_4_5 l_4_6 up) (adjacent l_4_6 l_4_5 down) (adjacent l_5_5 l_5_6 up) (adjacent l_5_6 l_5_5 down) (adjacent l_6_5 l_6_6 up) (adjacent l_6_6 l_6_5 down) (adjacent l_7_5 l_7_6 up) (adjacent l_7_6 l_7_5 down))
  (:goal (and
	   (at l_4_4 OrangeSquare)
	   (at l_5_4 BlackSquare))))