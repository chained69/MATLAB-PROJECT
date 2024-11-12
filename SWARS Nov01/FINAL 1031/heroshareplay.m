function [vmousePos] = heroshareplay(heroPos)


                fid = fopen('player1.xlsx','w');
                fprintf(fid,'%f %f\n',heroPos);
                fclose(fid);
                
                fid = fopen('player2.xlsx','r');
                vmousePos = fscanf(fid,'%f %f\n');
                fclose(fid);
  
