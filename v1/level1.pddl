(define (problem level1)
  (:domain gameaboutsquares)
  (:objects
    RedSquare - square
    BlueSquare - square
    l_0_7 l_1_7 l_2_7 l_3_7 l_4_7 - location
    l_0_6 l_1_6 l_2_6 l_3_6 l_4_6 - location
    l_0_5 l_1_5 l_2_5 l_3_5 l_4_5 - location
    l_0_4 l_1_4 l_2_4 l_3_4 l_4_4 - location
    l_0_3 l_1_3 l_2_3 l_3_3 l_4_3 - location
    l_0_2 l_1_2 l_2_2 l_3_2 l_4_2 - location
    l_0_1 l_1_1 l_2_1 l_3_1 l_4_1 - location
    l_0_0 l_1_0 l_2_0 l_3_0 l_4_0 - location
    left right up down - direction)
  (:init
    (at l_2_2 RedSquare)
    (dir up RedSquare)
    (at l_2_5 BlueSquare)
    (dir down BlueSquare)
    (noSquare l_0_7)  (noSquare l_1_7)  (noSquare l_2_7)  (noSquare l_3_7)  (noSquare l_4_7)
    (noSquare l_0_6)  (noSquare l_1_6)  (noSquare l_2_6)  (noSquare l_3_6)  (noSquare l_4_6)
    (noSquare l_0_5)  (noSquare l_1_5)                    (noSquare l_3_5)  (noSquare l_4_5)
    (noSquare l_0_4)  (noSquare l_1_4)  (noSquare l_2_4)  (noSquare l_3_4)  (noSquare l_4_4)
    (noSquare l_0_3)  (noSquare l_1_3)  (noSquare l_2_3)  (noSquare l_3_3)  (noSquare l_4_3)
    (noSquare l_0_2)  (noSquare l_1_2)                    (noSquare l_3_2)  (noSquare l_4_2)
    (noSquare l_0_1)  (noSquare l_1_1)  (noSquare l_2_1)  (noSquare l_3_1)  (noSquare l_4_1)
    (noSquare l_0_0)  (noSquare l_1_0)  (noSquare l_2_0)  (noSquare l_3_0)  (noSquare l_4_0)
    (adjacent l_0_0 l_1_0 right) (adjacent l_1_0 l_0_0 left) (adjacent l_1_0 l_2_0 right) (adjacent l_2_0 l_1_0 left) (adjacent l_2_0 l_3_0 right) (adjacent l_3_0 l_2_0 left) (adjacent l_3_0 l_4_0 right) (adjacent l_4_0 l_3_0 left)
    (adjacent l_0_1 l_1_1 right) (adjacent l_1_1 l_0_1 left) (adjacent l_1_1 l_2_1 right) (adjacent l_2_1 l_1_1 left) (adjacent l_2_1 l_3_1 right) (adjacent l_3_1 l_2_1 left) (adjacent l_3_1 l_4_1 right) (adjacent l_4_1 l_3_1 left)
    (adjacent l_0_2 l_1_2 right) (adjacent l_1_2 l_0_2 left) (adjacent l_1_2 l_2_2 right) (adjacent l_2_2 l_1_2 left) (adjacent l_2_2 l_3_2 right) (adjacent l_3_2 l_2_2 left) (adjacent l_3_2 l_4_2 right) (adjacent l_4_2 l_3_2 left)
    (adjacent l_0_3 l_1_3 right) (adjacent l_1_3 l_0_3 left) (adjacent l_1_3 l_2_3 right) (adjacent l_2_3 l_1_3 left) (adjacent l_2_3 l_3_3 right) (adjacent l_3_3 l_2_3 left) (adjacent l_3_3 l_4_3 right) (adjacent l_4_3 l_3_3 left)
    (adjacent l_0_4 l_1_4 right) (adjacent l_1_4 l_0_4 left) (adjacent l_1_4 l_2_4 right) (adjacent l_2_4 l_1_4 left) (adjacent l_2_4 l_3_4 right) (adjacent l_3_4 l_2_4 left) (adjacent l_3_4 l_4_4 right) (adjacent l_4_4 l_3_4 left)
    (adjacent l_0_5 l_1_5 right) (adjacent l_1_5 l_0_5 left) (adjacent l_1_5 l_2_5 right) (adjacent l_2_5 l_1_5 left) (adjacent l_2_5 l_3_5 right) (adjacent l_3_5 l_2_5 left) (adjacent l_3_5 l_4_5 right) (adjacent l_4_5 l_3_5 left)
    (adjacent l_0_6 l_1_6 right) (adjacent l_1_6 l_0_6 left) (adjacent l_1_6 l_2_6 right) (adjacent l_2_6 l_1_6 left) (adjacent l_2_6 l_3_6 right) (adjacent l_3_6 l_2_6 left) (adjacent l_3_6 l_4_6 right) (adjacent l_4_6 l_3_6 left)
    (adjacent l_0_7 l_1_7 right) (adjacent l_1_7 l_0_7 left) (adjacent l_1_7 l_2_7 right) (adjacent l_2_7 l_1_7 left) (adjacent l_2_7 l_3_7 right) (adjacent l_3_7 l_2_7 left) (adjacent l_3_7 l_4_7 right) (adjacent l_4_7 l_3_7 left)
    (adjacent l_0_0 l_0_1 up) (adjacent l_0_1 l_0_0 down) (adjacent l_1_0 l_1_1 up) (adjacent l_1_1 l_1_0 down) (adjacent l_2_0 l_2_1 up) (adjacent l_2_1 l_2_0 down) (adjacent l_3_0 l_3_1 up) (adjacent l_3_1 l_3_0 down) (adjacent l_4_0 l_4_1 up) (adjacent l_4_1 l_4_0 down)
    (adjacent l_0_1 l_0_2 up) (adjacent l_0_2 l_0_1 down) (adjacent l_1_1 l_1_2 up) (adjacent l_1_2 l_1_1 down) (adjacent l_2_1 l_2_2 up) (adjacent l_2_2 l_2_1 down) (adjacent l_3_1 l_3_2 up) (adjacent l_3_2 l_3_1 down) (adjacent l_4_1 l_4_2 up) (adjacent l_4_2 l_4_1 down)
    (adjacent l_0_2 l_0_3 up) (adjacent l_0_3 l_0_2 down) (adjacent l_1_2 l_1_3 up) (adjacent l_1_3 l_1_2 down) (adjacent l_2_2 l_2_3 up) (adjacent l_2_3 l_2_2 down) (adjacent l_3_2 l_3_3 up) (adjacent l_3_3 l_3_2 down) (adjacent l_4_2 l_4_3 up) (adjacent l_4_3 l_4_2 down)
    (adjacent l_0_3 l_0_4 up) (adjacent l_0_4 l_0_3 down) (adjacent l_1_3 l_1_4 up) (adjacent l_1_4 l_1_3 down) (adjacent l_2_3 l_2_4 up) (adjacent l_2_4 l_2_3 down) (adjacent l_3_3 l_3_4 up) (adjacent l_3_4 l_3_3 down) (adjacent l_4_3 l_4_4 up) (adjacent l_4_4 l_4_3 down)
    (adjacent l_0_4 l_0_5 up) (adjacent l_0_5 l_0_4 down) (adjacent l_1_4 l_1_5 up) (adjacent l_1_5 l_1_4 down) (adjacent l_2_4 l_2_5 up) (adjacent l_2_5 l_2_4 down) (adjacent l_3_4 l_3_5 up) (adjacent l_3_5 l_3_4 down) (adjacent l_4_4 l_4_5 up) (adjacent l_4_5 l_4_4 down)
    (adjacent l_0_5 l_0_6 up) (adjacent l_0_6 l_0_5 down) (adjacent l_1_5 l_1_6 up) (adjacent l_1_6 l_1_5 down) (adjacent l_2_5 l_2_6 up) (adjacent l_2_6 l_2_5 down) (adjacent l_3_5 l_3_6 up) (adjacent l_3_6 l_3_5 down) (adjacent l_4_5 l_4_6 up) (adjacent l_4_6 l_4_5 down)
    (adjacent l_0_6 l_0_7 up) (adjacent l_0_7 l_0_6 down) (adjacent l_1_6 l_1_7 up) (adjacent l_1_7 l_1_6 down) (adjacent l_2_6 l_2_7 up) (adjacent l_2_7 l_2_6 down) (adjacent l_3_6 l_3_7 up) (adjacent l_3_7 l_3_6 down) (adjacent l_4_6 l_4_7 up) (adjacent l_4_7 l_4_6 down))
  (:goal (and
	   (at l_2_3 RedSquare)
	   (at l_2_4 BlueSquare))))