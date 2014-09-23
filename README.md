Battle Ships
=============

Player (ship, board)
-------------------
* has boards
* has ships?
* places ships on board
* shoots at the board

Ship (board, player, square)
---------------------------
* can occupy a square   
* can be hit 			
* can sink 				

Square (ship, board)
--------------------
* knows if it has a ship 				   
* knows when it is shot but empty (miss)  
* knows when it is shot and has a ship (hit) 
* knows if it is empty 

Board (player, square, ship)
---------------------------
* has squares
* reports victory
* displays when a ship is sunk
* tells a square when it is hit
* tells a square when it it has a ship
* displays a hit
* displays a miss
