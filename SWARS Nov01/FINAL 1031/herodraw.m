function [img,Xf,Yf] = herodraw(mousePos,heroPos)

                 Xi = heroPos(1);
                 Xf = mousePos(1);
                 Yi = heroPos(2);
                 Yf = mousePos(2);          
                 XDistance = linspace(Xi,Xf,20);
                 YDistance = linspace(Yi,Yf,20);      
                 img = [XDistance; YDistance]';  