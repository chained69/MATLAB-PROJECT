function [imgv,Xfv,Yfv] = villainmove(mainAxis,villainPos)

     [mousePos] = get_mouse_position(mainAxis);
           Xiv = villainPos(1);
           Xfv = mousePos(1);
           Yiv = villainPos(2);
           Yfv = mousePos(2);          
           vXDistance = linspace(Xiv,Xfv,20);
           vYDistance = linspace(Yiv,Yfv,20);      
           imgv = [vXDistance; vYDistance]'; 
           