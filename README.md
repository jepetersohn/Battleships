Battle Ships
=============

Player
-------------------
* places ships on board| * ship
* shoots at the board| * board

Ship (board, player, square)
---------------------------
* can occupy a square   | * board
* can be hit 			| * player
* can sink 				| * square

Square
--------------------
* knows if it has a ship 				    | * ship
* knows when it is shot but empty (miss)    | * board
* knows when it is shot and has a ship (hit) |
* knows if it is empty |

Board 
---------------------------
* has squares | * player
* reports victory | * square
* reports when a ship is sunk | * ship
* tells a square when it is hit |
* tells a square when it it has a ship |
* displays a hit |
* displays a miss |