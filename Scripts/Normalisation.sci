function res=Normalisation(image)
    valMax = max(image)-min(image)

    taille = length(image)
    for x=1:taille
        image(x) = image(x)*255/valMax
    end
    
    res = image
endfunction
