function res=ToBinary(image, seuil)
    taille = length(image)
    for x = 1:taille
        if(image(x) <= seuil) then
            image(x) = 0
        else
            image(x) = 255
        end
    end
    res = image
endfunction
