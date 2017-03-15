function searchGrey=SearchGrey(image)
    va= max(image)
    
    taille = size(image)
    tailleY = taille(2)
    tailleX = taille(1)
    
    for x = tailleX:-1:1
        for y = tailleY:-1:1
            if image(x, y) == va then
                
                disp(string(x)+";"+string(y))
            end
        end
    end
    
    searchGrey = va
endfunction
