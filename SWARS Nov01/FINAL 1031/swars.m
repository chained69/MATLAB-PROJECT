function  swars(player)
% 11/4/2024
% swars the ultimate space shooter game
% Input Arguments  |
% 
%      * player - may select up to 2 players, 1 or 2
% Output Arguments |
% 
%      * Extreme Dopamine Rush
% 
% - - - *| G A M E  C O N T R O L S | * - - -

global right_button quitGame left_button ;  %#ok<GVMIS>
quitGame = false;
[mainAxis,ship,ship2,heroPos,villainPos,torpedo_1] = swarsplayersensor(player);
while quitGame == false 
    
 switch player
      case 1
       shiptextures(ship,ship2);  % light fixures for the air locked vessels

       if left_button == true     % when left button clicked
           left_button = false;  % reset trigger
           [torpedos] = heroshoot(mainAxis,heroPos); % call heroshoot function
           for i = 1:100
               pause(.015)
               draw_torpedos(torpedos(i,:),torpedo_1) % display torpedo array   
           end 
           torpedos = [ NaN; NaN]'; % clear plot
           draw_torpedos(torpedos,torpedo_1)  %delete torpedos
       end
    
       if right_button == true  % when right mouse button is clicked    
        right_button = false; % reset trigger
        [img,Xf,Yf] = heromove(mainAxis,heroPos);   %call heromove function
        heroPos = [Xf Yf];
       for i = 1:20
           
           pause(.015)
           draw_object(mainAxis,ship,img(i,:))    % display ship movement         
       end 

       end
      [vmousePos] = heroshareplay(heroPos);   % send info to player 2 calling heroshareplay function

      [img,Xfv,Yfv] = villaindraw(vmousePos,villainPos);  % gather player 2 movement data
      villainPos = [Xfv Yfv];
      for i = 1:20
        
        pause(.025)
        draw_object(mainAxis,ship2,img(i,:))   % display player 2 movement
         
      end 
     case 2

      shiptextures(ship,ship2);  %fun go go lights
      
       if left_button == true  % when left button true
           left_button = false;  % reset trigger
           [torpedos] = villainshoot(mainAxis,villainPos); %call villainshoot function
           for i = 1:100
           pause(.015)
           draw_torpedos(torpedos(i,:),torpedo_1)    % display torpedos
           end 
           torpedos = [ NaN; NaN;]';  %clear torpedo plot
            draw_torpedos(torpedos,torpedo_1)  %delete torpedo
        end
    
      if right_button == true  % when right button is clicked
          right_button = false; % reset trigger
        [imgv,Xfv,Yfv] = villainmove(mainAxis,villainPos); % call villainmove function 
        villainPos = [Xfv Yfv];
       for i = 1:20
           
           pause(.015)
           draw_object(mainAxis,ship2,imgv(i,:))    % draw player 1 movement        
       end 
      end 
        [mousePos] = villainshareplay(villainPos);% call villainshareplay function
        [img,Xf,Yf] = herodraw(mousePos,heroPos); % call herodraw function
        heroPos = [Xf Yf];
        for i = 1:20 
         pause(.015)
         draw_object(mainAxis,ship,img(i,:))     % display player 1 movement  
        end        
  end
end
 
 


