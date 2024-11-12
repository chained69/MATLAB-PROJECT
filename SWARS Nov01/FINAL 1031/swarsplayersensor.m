function [mainAxis,ship,ship2,heroPos,villainPos,torpedo_1] = swarsplayersensor(player)
% swarsplayersensor is a function that initializes the game with a set
% console for each player
%  Input Arguments
%  player - player 1 or 2 for the ultimate SWARS game
%  Output Arguments
%  mainAxis - the game display area
%  ship - player 1 ship
%  ship2 - player 2 ship
%  heroPos - hero position
%  villainPos - villain position

switch player
    case 1
        [mainAxis, ship,ship2, axisTitle,heroPos,villainPos,torpedo_1] = initialize_graphics();
        print_title(axisTitle,'| S W A R S [ 1 ] |')
        pause(0.025);    
        draw_object(mainAxis,ship,heroPos);
        draw_object(mainAxis,ship2,villainPos);
    case 2
        [mainAxis, ship,ship2, axisTitle,heroPos,villainPos,torpedo_1] = initialize_graphics();
        print_title(axisTitle,'| S W A R S [ 2 ] |')
        pause(0.025);    
        draw_object(mainAxis,ship,heroPos);
        draw_object(mainAxis,ship2,villainPos);
end