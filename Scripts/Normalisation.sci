function res=Normalisation(image)
    valMin = min(image)
    valMax = max(image)

    taille = length(image)
    for x=1:taille
        if valMax-valMin > 0 then
            image(x) = round(((image(x)-valMin)*255)/(valMax-valMin))
        else
            image(x) = round((image(x)-valMin)*255)
        end
    end
    
    res = image
endfunction
