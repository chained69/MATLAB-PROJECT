function [mousePos] = villainshareplay(villainPos)

                fid = fopen('player2.xlsx','w');
                fprintf(fid,'%f %f\n',villainPos);
                fclose(fid);
                
                fid = fopen('player1.xlsx','r');
                mousePos = fscanf(fid,'%f %f\n');
                fclose(fid);