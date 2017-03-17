function res=Mirror(calc, centerX, centerY)
    taille = size(calc)
    tailleX = taille(1)
    tailleY = taille(2)
    H = zeros(tailleX, tailleY)
    
    for x=1:tailleX
        for y=1:tailleY
            if calc(x,y) == 255 then
                 ecartX = x-centerX
                 ecartY = y-centerY
                 H(x+(2*ecartX*-1), y+(2*ecartY*-1)) = 255
            end
        end
    end
    res = H
endfunction
