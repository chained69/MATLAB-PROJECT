function [torpedos] = villainshoot(mainAxis,villainPos)

          [mousePos] = get_mouse_position(mainAxis);
           Xi = villainPos(1);
           Xf = mousePos(1);
           Yi = villainPos(2);
           Yf = mousePos(2);          
           m =  (Yf-Yi)/(Xf-Xi);
            if Xf < Xi
                XDistance = linspace(Xi,-250,100);
            else 
                XDistance = linspace(Xi,250,100); 
            end
           Yline  = Yi + m*(XDistance-Xi);   
           torpedos = [XDistance; Yline]'; 
