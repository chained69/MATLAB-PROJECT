  function keyDownListener(~,event)    
  global quitGame;
    switch event.Key 
      case 'q'
        quitGame = true;

        fid = fopen('player1.xlsx','w');
        fprintf(fid,'%i %i',50,150);
        fclose(fid);
        fid = fopen('player2.xlsx','w');
        fprintf(fid,'%i %i',150,150);
        fclose(fid);
        
        
    end
  end