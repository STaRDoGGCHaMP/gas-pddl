(define (problem level17)
  (:domain gameaboutsquares)
  (:objects
    RedSquare - square
    BlueSquare - square
    BlackSquare - square
    l_00_8 l_01_8 l_02_8 l_03_8 l_04_8 l_05_8 l_06_8 l_07_8 l_08_8 l_09_8 - location
    l_00_7 l_01_7 l_02_7 l_03_7 l_04_7 l_05_7 l_06_7 l_07_7 l_08_7 l_09_7 - location
    l_00_6 l_01_6 l_02_6 l_03_6 l_04_6 l_05_6 l_06_6 l_07_6 l_08_6 l_09_6 - location
    l_00_5 l_01_5 l_02_5 l_03_5 l_04_5 l_05_5 l_06_5 l_07_5 l_08_5 l_09_5 - location
    l_00_4 l_01_4 l_02_4 l_03_4 l_04_4 l_05_4 l_06_4 l_07_4 l_08_4 l_09_4 - location
    l_00_3 l_01_3 l_02_3 l_03_3 l_04_3 l_05_3 l_06_3 l_07_3 l_08_3 l_09_3 - location
    l_00_2 l_01_2 l_02_2 l_03_2 l_04_2 l_05_2 l_06_2 l_07_2 l_08_2 l_09_2 - location
    l_00_1 l_01_1 l_02_1 l_03_1 l_04_1 l_05_1 l_06_1 l_07_1 l_08_1 l_09_1 - location
    l_00_0 l_01_0 l_02_0 l_03_0 l_04_0 l_05_0 l_06_0 l_07_0 l_08_0 l_09_0 - location
    left right up down - direction)
  (:init
    (at l_03_5 RedSquare)
    (dir down RedSquare)
    (at l_06_5 BlueSquare)
    (dir left BlueSquare)
    (at l_03_4 BlackSquare)
    (dir right BlackSquare)
    (at2 l_03_5 down)
    (at2 l_06_5 left)
    (at2 l_03_4 right)
    (at2 l_05_3 up)
    (noSquare l_00_8)  (noSquare l_01_8)  (noSquare l_02_8)  (noSquare l_03_8)  (noSquare l_04_8)  (noSquare l_05_8)  (noSquare l_06_8)  (noSquare l_07_8)  (noSquare l_08_8)  (noSquare l_09_8)
    (noSquare l_00_7)  (noSquare l_01_7)  (noSquare l_02_7)  (noSquare l_03_7)  (noSquare l_04_7)  (noSquare l_05_7)  (noSquare l_06_7)  (noSquare l_07_7)  (noSquare l_08_7)  (noSquare l_09_7)
    (noSquare l_00_6)  (noSquare l_01_6)  (noSquare l_02_6)  (noSquare l_03_6)  (noSquare l_04_6)  (noSquare l_05_6)  (noSquare l_06_6)  (noSquare l_07_6)  (noSquare l_08_6)  (noSquare l_09_6)
    (noSquare l_00_5)  (noSquare l_01_5)  (noSquare l_02_5)                     (noSquare l_04_5)  (noSquare l_05_5)                     (noSquare l_07_5)  (noSquare l_08_5)  (noSquare l_09_5)
    (noSquare l_00_4)  (noSquare l_01_4)  (noSquare l_02_4)                     (noSquare l_04_4)  (noSquare l_05_4)  (noSquare l_06_4)  (noSquare l_07_4)  (noSquare l_08_4)  (noSquare l_09_4)
    (noSquare l_00_3)  (noSquare l_01_3)  (noSquare l_02_3)  (noSquare l_03_3)  (noSquare l_04_3)  (noSquare l_05_3)  (noSquare l_06_3)  (noSquare l_07_3)  (noSquare l_08_3)  (noSquare l_09_3)
    (noSquare l_00_2)  (noSquare l_01_2)  (noSquare l_02_2)  (noSquare l_03_2)  (noSquare l_04_2)  (noSquare l_05_2)  (noSquare l_06_2)  (noSquare l_07_2)  (noSquare l_08_2)  (noSquare l_09_2)
    (noSquare l_00_1)  (noSquare l_01_1)  (noSquare l_02_1)  (noSquare l_03_1)  (noSquare l_04_1)  (noSquare l_05_1)  (noSquare l_06_1)  (noSquare l_07_1)  (noSquare l_08_1)  (noSquare l_09_1)
    (noSquare l_00_0)  (noSquare l_01_0)  (noSquare l_02_0)  (noSquare l_03_0)  (noSquare l_04_0)  (noSquare l_05_0)  (noSquare l_06_0)  (noSquare l_07_0)  (noSquare l_08_0)  (noSquare l_09_0)
    (adjacent l_00_0 l_01_0 right) (adjacent l_01_0 l_00_0 left) (adjacent l_01_0 l_02_0 right) (adjacent l_02_0 l_01_0 left) (adjacent l_02_0 l_03_0 right) (adjacent l_03_0 l_02_0 left) (adjacent l_03_0 l_04_0 right) (adjacent l_04_0 l_03_0 left) (adjacent l_04_0 l_05_0 right) (adjacent l_05_0 l_04_0 left) (adjacent l_05_0 l_06_0 right) (adjacent l_06_0 l_05_0 left) (adjacent l_06_0 l_07_0 right) (adjacent l_07_0 l_06_0 left) (adjacent l_07_0 l_08_0 right) (adjacent l_08_0 l_07_0 left) (adjacent l_08_0 l_09_0 right) (adjacent l_09_0 l_08_0 left)
    (adjacent l_00_1 l_01_1 right) (adjacent l_01_1 l_00_1 left) (adjacent l_01_1 l_02_1 right) (adjacent l_02_1 l_01_1 left) (adjacent l_02_1 l_03_1 right) (adjacent l_03_1 l_02_1 left) (adjacent l_03_1 l_04_1 right) (adjacent l_04_1 l_03_1 left) (adjacent l_04_1 l_05_1 right) (adjacent l_05_1 l_04_1 left) (adjacent l_05_1 l_06_1 right) (adjacent l_06_1 l_05_1 left) (adjacent l_06_1 l_07_1 right) (adjacent l_07_1 l_06_1 left) (adjacent l_07_1 l_08_1 right) (adjacent l_08_1 l_07_1 left) (adjacent l_08_1 l_09_1 right) (adjacent l_09_1 l_08_1 left)
    (adjacent l_00_2 l_01_2 right) (adjacent l_01_2 l_00_2 left) (adjacent l_01_2 l_02_2 right) (adjacent l_02_2 l_01_2 left) (adjacent l_02_2 l_03_2 right) (adjacent l_03_2 l_02_2 left) (adjacent l_03_2 l_04_2 right) (adjacent l_04_2 l_03_2 left) (adjacent l_04_2 l_05_2 right) (adjacent l_05_2 l_04_2 left) (adjacent l_05_2 l_06_2 right) (adjacent l_06_2 l_05_2 left) (adjacent l_06_2 l_07_2 right) (adjacent l_07_2 l_06_2 left) (adjacent l_07_2 l_08_2 right) (adjacent l_08_2 l_07_2 left) (adjacent l_08_2 l_09_2 right) (adjacent l_09_2 l_08_2 left)
    (adjacent l_00_3 l_01_3 right) (adjacent l_01_3 l_00_3 left) (adjacent l_01_3 l_02_3 right) (adjacent l_02_3 l_01_3 left) (adjacent l_02_3 l_03_3 right) (adjacent l_03_3 l_02_3 left) (adjacent l_03_3 l_04_3 right) (adjacent l_04_3 l_03_3 left) (adjacent l_04_3 l_05_3 right) (adjacent l_05_3 l_04_3 left) (adjacent l_05_3 l_06_3 right) (adjacent l_06_3 l_05_3 left) (adjacent l_06_3 l_07_3 right) (adjacent l_07_3 l_06_3 left) (adjacent l_07_3 l_08_3 right) (adjacent l_08_3 l_07_3 left) (adjacent l_08_3 l_09_3 right) (adjacent l_09_3 l_08_3 left)
    (adjacent l_00_4 l_01_4 right) (adjacent l_01_4 l_00_4 left) (adjacent l_01_4 l_02_4 right) (adjacent l_02_4 l_01_4 left) (adjacent l_02_4 l_03_4 right) (adjacent l_03_4 l_02_4 left) (adjacent l_03_4 l_04_4 right) (adjacent l_04_4 l_03_4 left) (adjacent l_04_4 l_05_4 right) (adjacent l_05_4 l_04_4 left) (adjacent l_05_4 l_06_4 right) (adjacent l_06_4 l_05_4 left) (adjacent l_06_4 l_07_4 right) (adjacent l_07_4 l_06_4 left) (adjacent l_07_4 l_08_4 right) (adjacent l_08_4 l_07_4 left) (adjacent l_08_4 l_09_4 right) (adjacent l_09_4 l_08_4 left)
    (adjacent l_00_5 l_01_5 right) (adjacent l_01_5 l_00_5 left) (adjacent l_01_5 l_02_5 right) (adjacent l_02_5 l_01_5 left) (adjacent l_02_5 l_03_5 right) (adjacent l_03_5 l_02_5 left) (adjacent l_03_5 l_04_5 right) (adjacent l_04_5 l_03_5 left) (adjacent l_04_5 l_05_5 right) (adjacent l_05_5 l_04_5 left) (adjacent l_05_5 l_06_5 right) (adjacent l_06_5 l_05_5 left) (adjacent l_06_5 l_07_5 right) (adjacent l_07_5 l_06_5 left) (adjacent l_07_5 l_08_5 right) (adjacent l_08_5 l_07_5 left) (adjacent l_08_5 l_09_5 right) (adjacent l_09_5 l_08_5 left)
    (adjacent l_00_6 l_01_6 right) (adjacent l_01_6 l_00_6 left) (adjacent l_01_6 l_02_6 right) (adjacent l_02_6 l_01_6 left) (adjacent l_02_6 l_03_6 right) (adjacent l_03_6 l_02_6 left) (adjacent l_03_6 l_04_6 right) (adjacent l_04_6 l_03_6 left) (adjacent l_04_6 l_05_6 right) (adjacent l_05_6 l_04_6 left) (adjacent l_05_6 l_06_6 right) (adjacent l_06_6 l_05_6 left) (adjacent l_06_6 l_07_6 right) (adjacent l_07_6 l_06_6 left) (adjacent l_07_6 l_08_6 right) (adjacent l_08_6 l_07_6 left) (adjacent l_08_6 l_09_6 right) (adjacent l_09_6 l_08_6 left)
    (adjacent l_00_7 l_01_7 right) (adjacent l_01_7 l_00_7 left) (adjacent l_01_7 l_02_7 right) (adjacent l_02_7 l_01_7 left) (adjacent l_02_7 l_03_7 right) (adjacent l_03_7 l_02_7 left) (adjacent l_03_7 l_04_7 right) (adjacent l_04_7 l_03_7 left) (adjacent l_04_7 l_05_7 right) (adjacent l_05_7 l_04_7 left) (adjacent l_05_7 l_06_7 right) (adjacent l_06_7 l_05_7 left) (adjacent l_06_7 l_07_7 right) (adjacent l_07_7 l_06_7 left) (adjacent l_07_7 l_08_7 right) (adjacent l_08_7 l_07_7 left) (adjacent l_08_7 l_09_7 right) (adjacent l_09_7 l_08_7 left)
    (adjacent l_00_8 l_01_8 right) (adjacent l_01_8 l_00_8 left) (adjacent l_01_8 l_02_8 right) (adjacent l_02_8 l_01_8 left) (adjacent l_02_8 l_03_8 right) (adjacent l_03_8 l_02_8 left) (adjacent l_03_8 l_04_8 right) (adjacent l_04_8 l_03_8 left) (adjacent l_04_8 l_05_8 right) (adjacent l_05_8 l_04_8 left) (adjacent l_05_8 l_06_8 right) (adjacent l_06_8 l_05_8 left) (adjacent l_06_8 l_07_8 right) (adjacent l_07_8 l_06_8 left) (adjacent l_07_8 l_08_8 right) (adjacent l_08_8 l_07_8 left) (adjacent l_08_8 l_09_8 right) (adjacent l_09_8 l_08_8 left)
    (adjacent l_00_0 l_00_1 up) (adjacent l_00_1 l_00_0 down) (adjacent l_01_0 l_01_1 up) (adjacent l_01_1 l_01_0 down) (adjacent l_02_0 l_02_1 up) (adjacent l_02_1 l_02_0 down) (adjacent l_03_0 l_03_1 up) (adjacent l_03_1 l_03_0 down) (adjacent l_04_0 l_04_1 up) (adjacent l_04_1 l_04_0 down) (adjacent l_05_0 l_05_1 up) (adjacent l_05_1 l_05_0 down) (adjacent l_06_0 l_06_1 up) (adjacent l_06_1 l_06_0 down) (adjacent l_07_0 l_07_1 up) (adjacent l_07_1 l_07_0 down) (adjacent l_08_0 l_08_1 up) (adjacent l_08_1 l_08_0 down) (adjacent l_09_0 l_09_1 up) (adjacent l_09_1 l_09_0 down)
    (adjacent l_00_1 l_00_2 up) (adjacent l_00_2 l_00_1 down) (adjacent l_01_1 l_01_2 up) (adjacent l_01_2 l_01_1 down) (adjacent l_02_1 l_02_2 up) (adjacent l_02_2 l_02_1 down) (adjacent l_03_1 l_03_2 up) (adjacent l_03_2 l_03_1 down) (adjacent l_04_1 l_04_2 up) (adjacent l_04_2 l_04_1 down) (adjacent l_05_1 l_05_2 up) (adjacent l_05_2 l_05_1 down) (adjacent l_06_1 l_06_2 up) (adjacent l_06_2 l_06_1 down) (adjacent l_07_1 l_07_2 up) (adjacent l_07_2 l_07_1 down) (adjacent l_08_1 l_08_2 up) (adjacent l_08_2 l_08_1 down) (adjacent l_09_1 l_09_2 up) (adjacent l_09_2 l_09_1 down)
    (adjacent l_00_2 l_00_3 up) (adjacent l_00_3 l_00_2 down) (adjacent l_01_2 l_01_3 up) (adjacent l_01_3 l_01_2 down) (adjacent l_02_2 l_02_3 up) (adjacent l_02_3 l_02_2 down) (adjacent l_03_2 l_03_3 up) (adjacent l_03_3 l_03_2 down) (adjacent l_04_2 l_04_3 up) (adjacent l_04_3 l_04_2 down) (adjacent l_05_2 l_05_3 up) (adjacent l_05_3 l_05_2 down) (adjacent l_06_2 l_06_3 up) (adjacent l_06_3 l_06_2 down) (adjacent l_07_2 l_07_3 up) (adjacent l_07_3 l_07_2 down) (adjacent l_08_2 l_08_3 up) (adjacent l_08_3 l_08_2 down) (adjacent l_09_2 l_09_3 up) (adjacent l_09_3 l_09_2 down)
    (adjacent l_00_3 l_00_4 up) (adjacent l_00_4 l_00_3 down) (adjacent l_01_3 l_01_4 up) (adjacent l_01_4 l_01_3 down) (adjacent l_02_3 l_02_4 up) (adjacent l_02_4 l_02_3 down) (adjacent l_03_3 l_03_4 up) (adjacent l_03_4 l_03_3 down) (adjacent l_04_3 l_04_4 up) (adjacent l_04_4 l_04_3 down) (adjacent l_05_3 l_05_4 up) (adjacent l_05_4 l_05_3 down) (adjacent l_06_3 l_06_4 up) (adjacent l_06_4 l_06_3 down) (adjacent l_07_3 l_07_4 up) (adjacent l_07_4 l_07_3 down) (adjacent l_08_3 l_08_4 up) (adjacent l_08_4 l_08_3 down) (adjacent l_09_3 l_09_4 up) (adjacent l_09_4 l_09_3 down)
    (adjacent l_00_4 l_00_5 up) (adjacent l_00_5 l_00_4 down) (adjacent l_01_4 l_01_5 up) (adjacent l_01_5 l_01_4 down) (adjacent l_02_4 l_02_5 up) (adjacent l_02_5 l_02_4 down) (adjacent l_03_4 l_03_5 up) (adjacent l_03_5 l_03_4 down) (adjacent l_04_4 l_04_5 up) (adjacent l_04_5 l_04_4 down) (adjacent l_05_4 l_05_5 up) (adjacent l_05_5 l_05_4 down) (adjacent l_06_4 l_06_5 up) (adjacent l_06_5 l_06_4 down) (adjacent l_07_4 l_07_5 up) (adjacent l_07_5 l_07_4 down) (adjacent l_08_4 l_08_5 up) (adjacent l_08_5 l_08_4 down) (adjacent l_09_4 l_09_5 up) (adjacent l_09_5 l_09_4 down)
    (adjacent l_00_5 l_00_6 up) (adjacent l_00_6 l_00_5 down) (adjacent l_01_5 l_01_6 up) (adjacent l_01_6 l_01_5 down) (adjacent l_02_5 l_02_6 up) (adjacent l_02_6 l_02_5 down) (adjacent l_03_5 l_03_6 up) (adjacent l_03_6 l_03_5 down) (adjacent l_04_5 l_04_6 up) (adjacent l_04_6 l_04_5 down) (adjacent l_05_5 l_05_6 up) (adjacent l_05_6 l_05_5 down) (adjacent l_06_5 l_06_6 up) (adjacent l_06_6 l_06_5 down) (adjacent l_07_5 l_07_6 up) (adjacent l_07_6 l_07_5 down) (adjacent l_08_5 l_08_6 up) (adjacent l_08_6 l_08_5 down) (adjacent l_09_5 l_09_6 up) (adjacent l_09_6 l_09_5 down)
    (adjacent l_00_6 l_00_7 up) (adjacent l_00_7 l_00_6 down) (adjacent l_01_6 l_01_7 up) (adjacent l_01_7 l_01_6 down) (adjacent l_02_6 l_02_7 up) (adjacent l_02_7 l_02_6 down) (adjacent l_03_6 l_03_7 up) (adjacent l_03_7 l_03_6 down) (adjacent l_04_6 l_04_7 up) (adjacent l_04_7 l_04_6 down) (adjacent l_05_6 l_05_7 up) (adjacent l_05_7 l_05_6 down) (adjacent l_06_6 l_06_7 up) (adjacent l_06_7 l_06_6 down) (adjacent l_07_6 l_07_7 up) (adjacent l_07_7 l_07_6 down) (adjacent l_08_6 l_08_7 up) (adjacent l_08_7 l_08_6 down) (adjacent l_09_6 l_09_7 up) (adjacent l_09_7 l_09_6 down)
    (adjacent l_00_7 l_00_8 up) (adjacent l_00_8 l_00_7 down) (adjacent l_01_7 l_01_8 up) (adjacent l_01_8 l_01_7 down) (adjacent l_02_7 l_02_8 up) (adjacent l_02_8 l_02_7 down) (adjacent l_03_7 l_03_8 up) (adjacent l_03_8 l_03_7 down) (adjacent l_04_7 l_04_8 up) (adjacent l_04_8 l_04_7 down) (adjacent l_05_7 l_05_8 up) (adjacent l_05_8 l_05_7 down) (adjacent l_06_7 l_06_8 up) (adjacent l_06_8 l_06_7 down) (adjacent l_07_7 l_07_8 up) (adjacent l_07_8 l_07_7 down) (adjacent l_08_7 l_08_8 up) (adjacent l_08_8 l_08_7 down) (adjacent l_09_7 l_09_8 up) (adjacent l_09_8 l_09_7 down))
  (:goal (and
	   (at l_04_4 RedSquare)
	   (at l_06_4 BlueSquare)
	   (at l_05_4 BlackSquare))))