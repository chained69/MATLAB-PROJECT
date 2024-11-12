function [img,Xfv,Yfv] = villaindraw(vmousePos,villainPos)

    Xiv = villainPos(1);
                 Xfv = vmousePos(1);
                 Yiv = villainPos(2);
                Yfv = vmousePos(2);          
                 vXDistance = linspace(Xiv,Xfv,20);
              vYDistance = linspace(Yiv,Yfv,20);      
                 img = [vXDistance; vYDistance]';  