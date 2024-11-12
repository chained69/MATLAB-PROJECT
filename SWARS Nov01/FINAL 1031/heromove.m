function [img,Xf,Yf] = heromove(mainAxis,heroPos)

           
           [mousePos] = get_mouse_position(mainAxis);
           
           Xi = heroPos(1);
           Xf = mousePos(1);
           Yi = heroPos(2);
           Yf = mousePos(2);          
           XDistance = linspace(min(Xi),max(Xf),20);
           YDistance = linspace(min(Yi),max(Yf),20);      
           img = [XDistance; YDistance]'; 
            
