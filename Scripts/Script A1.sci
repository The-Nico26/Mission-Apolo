function res=SearchGrey(image)
    va= max(image)
    
    taille = size(image)
    tailleY = taille(2)
    tailleX = taille(1)
    
    for x = 1:tailleX
        for y = 1:tailleY
            if image(x,y) == va then
                
                disp(string(x)+";"+string(y))
            end,
        end
    end
    
    res = va
endfunction
