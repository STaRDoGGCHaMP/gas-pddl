(define (problem level22)
  (:domain gameaboutsquares)
  (:objects
    RedSquare - square
    BlueSquare - square
    BlackSquare - square
    l_00_10 l_01_10 l_02_10 l_03_10 l_04_10 l_05_10 l_06_10 l_07_10 l_08_10 l_09_10 l_10_10 - location
    l_00_09 l_01_09 l_02_09 l_03_09 l_04_09 l_05_09 l_06_09 l_07_09 l_08_09 l_09_09 l_10_09 - location
    l_00_08 l_01_08 l_02_08 l_03_08 l_04_08 l_05_08 l_06_08 l_07_08 l_08_08 l_09_08 l_10_08 - location
    l_00_07 l_01_07 l_02_07 l_03_07 l_04_07 l_05_07 l_06_07 l_07_07 l_08_07 l_09_07 l_10_07 - location
    l_00_06 l_01_06 l_02_06 l_03_06 l_04_06 l_05_06 l_06_06 l_07_06 l_08_06 l_09_06 l_10_06 - location
    l_00_05 l_01_05 l_02_05 l_03_05 l_04_05 l_05_05 l_06_05 l_07_05 l_08_05 l_09_05 l_10_05 - location
    l_00_04 l_01_04 l_02_04 l_03_04 l_04_04 l_05_04 l_06_04 l_07_04 l_08_04 l_09_04 l_10_04 - location
    l_00_03 l_01_03 l_02_03 l_03_03 l_04_03 l_05_03 l_06_03 l_07_03 l_08_03 l_09_03 l_10_03 - location
    l_00_02 l_01_02 l_02_02 l_03_02 l_04_02 l_05_02 l_06_02 l_07_02 l_08_02 l_09_02 l_10_02 - location
    l_00_01 l_01_01 l_02_01 l_03_01 l_04_01 l_05_01 l_06_01 l_07_01 l_08_01 l_09_01 l_10_01 - location
    l_00_00 l_01_00 l_02_00 l_03_00 l_04_00 l_05_00 l_06_00 l_07_00 l_08_00 l_09_00 l_10_00 - location
    left right up down - direction)
  (:init
    (at l_03_05 RedSquare)
    (dir right RedSquare)
    (at l_04_07 BlueSquare)
    (dir down BlueSquare)
    (at l_07_06 BlackSquare)
    (dir down BlackSquare)
    (at2 l_04_07 down)
    (at2 l_03_05 right)
    (at2 l_07_04 left)
    (at2 l_04_03 up)
    (adjacent l_00_00 l_01_00 right) (adjacent l_01_00 l_00_00 left) (adjacent l_01_00 l_02_00 right) (adjacent l_02_00 l_01_00 left) (adjacent l_02_00 l_03_00 right) (adjacent l_03_00 l_02_00 left) (adjacent l_03_00 l_04_00 right) (adjacent l_04_00 l_03_00 left) (adjacent l_04_00 l_05_00 right) (adjacent l_05_00 l_04_00 left) (adjacent l_05_00 l_06_00 right) (adjacent l_06_00 l_05_00 left) (adjacent l_06_00 l_07_00 right) (adjacent l_07_00 l_06_00 left) (adjacent l_07_00 l_08_00 right) (adjacent l_08_00 l_07_00 left) (adjacent l_08_00 l_09_00 right) (adjacent l_09_00 l_08_00 left) (adjacent l_09_00 l_10_00 right) (adjacent l_10_00 l_09_00 left)
    (adjacent l_00_01 l_01_01 right) (adjacent l_01_01 l_00_01 left) (adjacent l_01_01 l_02_01 right) (adjacent l_02_01 l_01_01 left) (adjacent l_02_01 l_03_01 right) (adjacent l_03_01 l_02_01 left) (adjacent l_03_01 l_04_01 right) (adjacent l_04_01 l_03_01 left) (adjacent l_04_01 l_05_01 right) (adjacent l_05_01 l_04_01 left) (adjacent l_05_01 l_06_01 right) (adjacent l_06_01 l_05_01 left) (adjacent l_06_01 l_07_01 right) (adjacent l_07_01 l_06_01 left) (adjacent l_07_01 l_08_01 right) (adjacent l_08_01 l_07_01 left) (adjacent l_08_01 l_09_01 right) (adjacent l_09_01 l_08_01 left) (adjacent l_09_01 l_10_01 right) (adjacent l_10_01 l_09_01 left)
    (adjacent l_00_02 l_01_02 right) (adjacent l_01_02 l_00_02 left) (adjacent l_01_02 l_02_02 right) (adjacent l_02_02 l_01_02 left) (adjacent l_02_02 l_03_02 right) (adjacent l_03_02 l_02_02 left) (adjacent l_03_02 l_04_02 right) (adjacent l_04_02 l_03_02 left) (adjacent l_04_02 l_05_02 right) (adjacent l_05_02 l_04_02 left) (adjacent l_05_02 l_06_02 right) (adjacent l_06_02 l_05_02 left) (adjacent l_06_02 l_07_02 right) (adjacent l_07_02 l_06_02 left) (adjacent l_07_02 l_08_02 right) (adjacent l_08_02 l_07_02 left) (adjacent l_08_02 l_09_02 right) (adjacent l_09_02 l_08_02 left) (adjacent l_09_02 l_10_02 right) (adjacent l_10_02 l_09_02 left)
    (adjacent l_00_03 l_01_03 right) (adjacent l_01_03 l_00_03 left) (adjacent l_01_03 l_02_03 right) (adjacent l_02_03 l_01_03 left) (adjacent l_02_03 l_03_03 right) (adjacent l_03_03 l_02_03 left) (adjacent l_03_03 l_04_03 right) (adjacent l_04_03 l_03_03 left) (adjacent l_04_03 l_05_03 right) (adjacent l_05_03 l_04_03 left) (adjacent l_05_03 l_06_03 right) (adjacent l_06_03 l_05_03 left) (adjacent l_06_03 l_07_03 right) (adjacent l_07_03 l_06_03 left) (adjacent l_07_03 l_08_03 right) (adjacent l_08_03 l_07_03 left) (adjacent l_08_03 l_09_03 right) (adjacent l_09_03 l_08_03 left) (adjacent l_09_03 l_10_03 right) (adjacent l_10_03 l_09_03 left)
    (adjacent l_00_04 l_01_04 right) (adjacent l_01_04 l_00_04 left) (adjacent l_01_04 l_02_04 right) (adjacent l_02_04 l_01_04 left) (adjacent l_02_04 l_03_04 right) (adjacent l_03_04 l_02_04 left) (adjacent l_03_04 l_04_04 right) (adjacent l_04_04 l_03_04 left) (adjacent l_04_04 l_05_04 right) (adjacent l_05_04 l_04_04 left) (adjacent l_05_04 l_06_04 right) (adjacent l_06_04 l_05_04 left) (adjacent l_06_04 l_07_04 right) (adjacent l_07_04 l_06_04 left) (adjacent l_07_04 l_08_04 right) (adjacent l_08_04 l_07_04 left) (adjacent l_08_04 l_09_04 right) (adjacent l_09_04 l_08_04 left) (adjacent l_09_04 l_10_04 right) (adjacent l_10_04 l_09_04 left)
    (adjacent l_00_05 l_01_05 right) (adjacent l_01_05 l_00_05 left) (adjacent l_01_05 l_02_05 right) (adjacent l_02_05 l_01_05 left) (adjacent l_02_05 l_03_05 right) (adjacent l_03_05 l_02_05 left) (adjacent l_03_05 l_04_05 right) (adjacent l_04_05 l_03_05 left) (adjacent l_04_05 l_05_05 right) (adjacent l_05_05 l_04_05 left) (adjacent l_05_05 l_06_05 right) (adjacent l_06_05 l_05_05 left) (adjacent l_06_05 l_07_05 right) (adjacent l_07_05 l_06_05 left) (adjacent l_07_05 l_08_05 right) (adjacent l_08_05 l_07_05 left) (adjacent l_08_05 l_09_05 right) (adjacent l_09_05 l_08_05 left) (adjacent l_09_05 l_10_05 right) (adjacent l_10_05 l_09_05 left)
    (adjacent l_00_06 l_01_06 right) (adjacent l_01_06 l_00_06 left) (adjacent l_01_06 l_02_06 right) (adjacent l_02_06 l_01_06 left) (adjacent l_02_06 l_03_06 right) (adjacent l_03_06 l_02_06 left) (adjacent l_03_06 l_04_06 right) (adjacent l_04_06 l_03_06 left) (adjacent l_04_06 l_05_06 right) (adjacent l_05_06 l_04_06 left) (adjacent l_05_06 l_06_06 right) (adjacent l_06_06 l_05_06 left) (adjacent l_06_06 l_07_06 right) (adjacent l_07_06 l_06_06 left) (adjacent l_07_06 l_08_06 right) (adjacent l_08_06 l_07_06 left) (adjacent l_08_06 l_09_06 right) (adjacent l_09_06 l_08_06 left) (adjacent l_09_06 l_10_06 right) (adjacent l_10_06 l_09_06 left)
    (adjacent l_00_07 l_01_07 right) (adjacent l_01_07 l_00_07 left) (adjacent l_01_07 l_02_07 right) (adjacent l_02_07 l_01_07 left) (adjacent l_02_07 l_03_07 right) (adjacent l_03_07 l_02_07 left) (adjacent l_03_07 l_04_07 right) (adjacent l_04_07 l_03_07 left) (adjacent l_04_07 l_05_07 right) (adjacent l_05_07 l_04_07 left) (adjacent l_05_07 l_06_07 right) (adjacent l_06_07 l_05_07 left) (adjacent l_06_07 l_07_07 right) (adjacent l_07_07 l_06_07 left) (adjacent l_07_07 l_08_07 right) (adjacent l_08_07 l_07_07 left) (adjacent l_08_07 l_09_07 right) (adjacent l_09_07 l_08_07 left) (adjacent l_09_07 l_10_07 right) (adjacent l_10_07 l_09_07 left)
    (adjacent l_00_08 l_01_08 right) (adjacent l_01_08 l_00_08 left) (adjacent l_01_08 l_02_08 right) (adjacent l_02_08 l_01_08 left) (adjacent l_02_08 l_03_08 right) (adjacent l_03_08 l_02_08 left) (adjacent l_03_08 l_04_08 right) (adjacent l_04_08 l_03_08 left) (adjacent l_04_08 l_05_08 right) (adjacent l_05_08 l_04_08 left) (adjacent l_05_08 l_06_08 right) (adjacent l_06_08 l_05_08 left) (adjacent l_06_08 l_07_08 right) (adjacent l_07_08 l_06_08 left) (adjacent l_07_08 l_08_08 right) (adjacent l_08_08 l_07_08 left) (adjacent l_08_08 l_09_08 right) (adjacent l_09_08 l_08_08 left) (adjacent l_09_08 l_10_08 right) (adjacent l_10_08 l_09_08 left)
    (adjacent l_00_09 l_01_09 right) (adjacent l_01_09 l_00_09 left) (adjacent l_01_09 l_02_09 right) (adjacent l_02_09 l_01_09 left) (adjacent l_02_09 l_03_09 right) (adjacent l_03_09 l_02_09 left) (adjacent l_03_09 l_04_09 right) (adjacent l_04_09 l_03_09 left) (adjacent l_04_09 l_05_09 right) (adjacent l_05_09 l_04_09 left) (adjacent l_05_09 l_06_09 right) (adjacent l_06_09 l_05_09 left) (adjacent l_06_09 l_07_09 right) (adjacent l_07_09 l_06_09 left) (adjacent l_07_09 l_08_09 right) (adjacent l_08_09 l_07_09 left) (adjacent l_08_09 l_09_09 right) (adjacent l_09_09 l_08_09 left) (adjacent l_09_09 l_10_09 right) (adjacent l_10_09 l_09_09 left)
    (adjacent l_00_10 l_01_10 right) (adjacent l_01_10 l_00_10 left) (adjacent l_01_10 l_02_10 right) (adjacent l_02_10 l_01_10 left) (adjacent l_02_10 l_03_10 right) (adjacent l_03_10 l_02_10 left) (adjacent l_03_10 l_04_10 right) (adjacent l_04_10 l_03_10 left) (adjacent l_04_10 l_05_10 right) (adjacent l_05_10 l_04_10 left) (adjacent l_05_10 l_06_10 right) (adjacent l_06_10 l_05_10 left) (adjacent l_06_10 l_07_10 right) (adjacent l_07_10 l_06_10 left) (adjacent l_07_10 l_08_10 right) (adjacent l_08_10 l_07_10 left) (adjacent l_08_10 l_09_10 right) (adjacent l_09_10 l_08_10 left) (adjacent l_09_10 l_10_10 right) (adjacent l_10_10 l_09_10 left)
    (adjacent l_00_00 l_00_01 up) (adjacent l_00_01 l_00_00 down) (adjacent l_01_00 l_01_01 up) (adjacent l_01_01 l_01_00 down) (adjacent l_02_00 l_02_01 up) (adjacent l_02_01 l_02_00 down) (adjacent l_03_00 l_03_01 up) (adjacent l_03_01 l_03_00 down) (adjacent l_04_00 l_04_01 up) (adjacent l_04_01 l_04_00 down) (adjacent l_05_00 l_05_01 up) (adjacent l_05_01 l_05_00 down) (adjacent l_06_00 l_06_01 up) (adjacent l_06_01 l_06_00 down) (adjacent l_07_00 l_07_01 up) (adjacent l_07_01 l_07_00 down) (adjacent l_08_00 l_08_01 up) (adjacent l_08_01 l_08_00 down) (adjacent l_09_00 l_09_01 up) (adjacent l_09_01 l_09_00 down) (adjacent l_10_00 l_10_01 up) (adjacent l_10_01 l_10_00 down)
    (adjacent l_00_01 l_00_02 up) (adjacent l_00_02 l_00_01 down) (adjacent l_01_01 l_01_02 up) (adjacent l_01_02 l_01_01 down) (adjacent l_02_01 l_02_02 up) (adjacent l_02_02 l_02_01 down) (adjacent l_03_01 l_03_02 up) (adjacent l_03_02 l_03_01 down) (adjacent l_04_01 l_04_02 up) (adjacent l_04_02 l_04_01 down) (adjacent l_05_01 l_05_02 up) (adjacent l_05_02 l_05_01 down) (adjacent l_06_01 l_06_02 up) (adjacent l_06_02 l_06_01 down) (adjacent l_07_01 l_07_02 up) (adjacent l_07_02 l_07_01 down) (adjacent l_08_01 l_08_02 up) (adjacent l_08_02 l_08_01 down) (adjacent l_09_01 l_09_02 up) (adjacent l_09_02 l_09_01 down) (adjacent l_10_01 l_10_02 up) (adjacent l_10_02 l_10_01 down)
    (adjacent l_00_02 l_00_03 up) (adjacent l_00_03 l_00_02 down) (adjacent l_01_02 l_01_03 up) (adjacent l_01_03 l_01_02 down) (adjacent l_02_02 l_02_03 up) (adjacent l_02_03 l_02_02 down) (adjacent l_03_02 l_03_03 up) (adjacent l_03_03 l_03_02 down) (adjacent l_04_02 l_04_03 up) (adjacent l_04_03 l_04_02 down) (adjacent l_05_02 l_05_03 up) (adjacent l_05_03 l_05_02 down) (adjacent l_06_02 l_06_03 up) (adjacent l_06_03 l_06_02 down) (adjacent l_07_02 l_07_03 up) (adjacent l_07_03 l_07_02 down) (adjacent l_08_02 l_08_03 up) (adjacent l_08_03 l_08_02 down) (adjacent l_09_02 l_09_03 up) (adjacent l_09_03 l_09_02 down) (adjacent l_10_02 l_10_03 up) (adjacent l_10_03 l_10_02 down)
    (adjacent l_00_03 l_00_04 up) (adjacent l_00_04 l_00_03 down) (adjacent l_01_03 l_01_04 up) (adjacent l_01_04 l_01_03 down) (adjacent l_02_03 l_02_04 up) (adjacent l_02_04 l_02_03 down) (adjacent l_03_03 l_03_04 up) (adjacent l_03_04 l_03_03 down) (adjacent l_04_03 l_04_04 up) (adjacent l_04_04 l_04_03 down) (adjacent l_05_03 l_05_04 up) (adjacent l_05_04 l_05_03 down) (adjacent l_06_03 l_06_04 up) (adjacent l_06_04 l_06_03 down) (adjacent l_07_03 l_07_04 up) (adjacent l_07_04 l_07_03 down) (adjacent l_08_03 l_08_04 up) (adjacent l_08_04 l_08_03 down) (adjacent l_09_03 l_09_04 up) (adjacent l_09_04 l_09_03 down) (adjacent l_10_03 l_10_04 up) (adjacent l_10_04 l_10_03 down)
    (adjacent l_00_04 l_00_05 up) (adjacent l_00_05 l_00_04 down) (adjacent l_01_04 l_01_05 up) (adjacent l_01_05 l_01_04 down) (adjacent l_02_04 l_02_05 up) (adjacent l_02_05 l_02_04 down) (adjacent l_03_04 l_03_05 up) (adjacent l_03_05 l_03_04 down) (adjacent l_04_04 l_04_05 up) (adjacent l_04_05 l_04_04 down) (adjacent l_05_04 l_05_05 up) (adjacent l_05_05 l_05_04 down) (adjacent l_06_04 l_06_05 up) (adjacent l_06_05 l_06_04 down) (adjacent l_07_04 l_07_05 up) (adjacent l_07_05 l_07_04 down) (adjacent l_08_04 l_08_05 up) (adjacent l_08_05 l_08_04 down) (adjacent l_09_04 l_09_05 up) (adjacent l_09_05 l_09_04 down) (adjacent l_10_04 l_10_05 up) (adjacent l_10_05 l_10_04 down)
    (adjacent l_00_05 l_00_06 up) (adjacent l_00_06 l_00_05 down) (adjacent l_01_05 l_01_06 up) (adjacent l_01_06 l_01_05 down) (adjacent l_02_05 l_02_06 up) (adjacent l_02_06 l_02_05 down) (adjacent l_03_05 l_03_06 up) (adjacent l_03_06 l_03_05 down) (adjacent l_04_05 l_04_06 up) (adjacent l_04_06 l_04_05 down) (adjacent l_05_05 l_05_06 up) (adjacent l_05_06 l_05_05 down) (adjacent l_06_05 l_06_06 up) (adjacent l_06_06 l_06_05 down) (adjacent l_07_05 l_07_06 up) (adjacent l_07_06 l_07_05 down) (adjacent l_08_05 l_08_06 up) (adjacent l_08_06 l_08_05 down) (adjacent l_09_05 l_09_06 up) (adjacent l_09_06 l_09_05 down) (adjacent l_10_05 l_10_06 up) (adjacent l_10_06 l_10_05 down)
    (adjacent l_00_06 l_00_07 up) (adjacent l_00_07 l_00_06 down) (adjacent l_01_06 l_01_07 up) (adjacent l_01_07 l_01_06 down) (adjacent l_02_06 l_02_07 up) (adjacent l_02_07 l_02_06 down) (adjacent l_03_06 l_03_07 up) (adjacent l_03_07 l_03_06 down) (adjacent l_04_06 l_04_07 up) (adjacent l_04_07 l_04_06 down) (adjacent l_05_06 l_05_07 up) (adjacent l_05_07 l_05_06 down) (adjacent l_06_06 l_06_07 up) (adjacent l_06_07 l_06_06 down) (adjacent l_07_06 l_07_07 up) (adjacent l_07_07 l_07_06 down) (adjacent l_08_06 l_08_07 up) (adjacent l_08_07 l_08_06 down) (adjacent l_09_06 l_09_07 up) (adjacent l_09_07 l_09_06 down) (adjacent l_10_06 l_10_07 up) (adjacent l_10_07 l_10_06 down)
    (adjacent l_00_07 l_00_08 up) (adjacent l_00_08 l_00_07 down) (adjacent l_01_07 l_01_08 up) (adjacent l_01_08 l_01_07 down) (adjacent l_02_07 l_02_08 up) (adjacent l_02_08 l_02_07 down) (adjacent l_03_07 l_03_08 up) (adjacent l_03_08 l_03_07 down) (adjacent l_04_07 l_04_08 up) (adjacent l_04_08 l_04_07 down) (adjacent l_05_07 l_05_08 up) (adjacent l_05_08 l_05_07 down) (adjacent l_06_07 l_06_08 up) (adjacent l_06_08 l_06_07 down) (adjacent l_07_07 l_07_08 up) (adjacent l_07_08 l_07_07 down) (adjacent l_08_07 l_08_08 up) (adjacent l_08_08 l_08_07 down) (adjacent l_09_07 l_09_08 up) (adjacent l_09_08 l_09_07 down) (adjacent l_10_07 l_10_08 up) (adjacent l_10_08 l_10_07 down)
    (adjacent l_00_08 l_00_09 up) (adjacent l_00_09 l_00_08 down) (adjacent l_01_08 l_01_09 up) (adjacent l_01_09 l_01_08 down) (adjacent l_02_08 l_02_09 up) (adjacent l_02_09 l_02_08 down) (adjacent l_03_08 l_03_09 up) (adjacent l_03_09 l_03_08 down) (adjacent l_04_08 l_04_09 up) (adjacent l_04_09 l_04_08 down) (adjacent l_05_08 l_05_09 up) (adjacent l_05_09 l_05_08 down) (adjacent l_06_08 l_06_09 up) (adjacent l_06_09 l_06_08 down) (adjacent l_07_08 l_07_09 up) (adjacent l_07_09 l_07_08 down) (adjacent l_08_08 l_08_09 up) (adjacent l_08_09 l_08_08 down) (adjacent l_09_08 l_09_09 up) (adjacent l_09_09 l_09_08 down) (adjacent l_10_08 l_10_09 up) (adjacent l_10_09 l_10_08 down)
    (adjacent l_00_09 l_00_10 up) (adjacent l_00_10 l_00_09 down) (adjacent l_01_09 l_01_10 up) (adjacent l_01_10 l_01_09 down) (adjacent l_02_09 l_02_10 up) (adjacent l_02_10 l_02_09 down) (adjacent l_03_09 l_03_10 up) (adjacent l_03_10 l_03_09 down) (adjacent l_04_09 l_04_10 up) (adjacent l_04_10 l_04_09 down) (adjacent l_05_09 l_05_10 up) (adjacent l_05_10 l_05_09 down) (adjacent l_06_09 l_06_10 up) (adjacent l_06_10 l_06_09 down) (adjacent l_07_09 l_07_10 up) (adjacent l_07_10 l_07_09 down) (adjacent l_08_09 l_08_10 up) (adjacent l_08_10 l_08_09 down) (adjacent l_09_09 l_09_10 up) (adjacent l_09_10 l_09_09 down) (adjacent l_10_09 l_10_10 up) (adjacent l_10_10 l_10_09 down))
  (:goal (and
	   (at l_05_07 RedSquare))))