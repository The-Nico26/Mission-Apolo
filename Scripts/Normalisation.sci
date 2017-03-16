function res=Normalisation(image)
    valMin = min(image)
    valMax = max(image)

    taille = length(image)
    for x=1:taille
        image(x) = round(((image(x)-valMin)*255)/(valMax-valMin))
    end
    
    res = image
endfunction
