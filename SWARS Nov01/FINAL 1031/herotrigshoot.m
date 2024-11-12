function [ torpedos ] = herotrigshoot(mainAxis,heroPos)
%  trigonometric gun




    [mousePos] = get_mouse_position(mainAxis);
           Xi = heroPos(1);
           Xf = mousePos(1);
           Yi = heroPos(2);
           Yf = mousePos(2); 
            
           
      

           XDistance = hgrad*cosd(theta);
           YDistance = hgrad*sind(theta)+Yi;

  
           torpedos = [XDistance; YDistance]'; 

           fid = fopen('player1.xlsx','w');
           fprintf(fid,'/n%f %f\n',torpedos);
           fclose(fid);