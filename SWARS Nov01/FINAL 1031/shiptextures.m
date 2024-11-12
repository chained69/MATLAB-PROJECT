function [] = shiptextures(ship,ship2)
% shiptextures is a function that may alter the design of the ship
% throughout the gameplay
%  Input Arguments |
%  ship - player 1 ship
%  ship2 - player 2 ship
% Output Arguments NA

    
              
  set(ship.patch,'EdgeColor', randi(10,1,3)/10);
  set(ship2.patch,'EdgeColor', randi(10,1,3)/10);

              