function [torpedos] = heroshoot(mainAxis,heroPos)


          [mousePos] = get_mouse_position(mainAxis);
           Xi = heroPos(1);
           Xf = mousePos(1);
           Yi = heroPos(2);
           Yf = mousePos(2); 
           
           m =  (Yf-Yi)/(Xf-Xi);
            if Xf < Xi     
                XDistance = linspace(Xi,-190);
            else 
                XDistance = linspace(Xi,190); 
            end
            
           Yline  = Yi + m*(XDistance-Xi);   
           torpedos = [XDistance; Yline]'; 

           fid = fopen('player1.xlsx','w');
           fprintf(fid,'/n%f %f\n',torpedos);
           fclose(fid);
