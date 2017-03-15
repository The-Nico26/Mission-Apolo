function res=NormalisationSB(image)
    valMin = min(image)
    valMax = max(image)
    
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    for x=2:(sizeX-1)
        for y=2:(sizeY-1)
            if valMax-valMin > 0 then
                image(x) = round(((image(x)-valMin)*255)/(valMax-valMin))
            else
                image(x) = round((image(x)-valMin)*255)
            end
        end
    end
endfunction
