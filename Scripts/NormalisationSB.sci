function res=NormalisationSB(image)
    valMin = getMinSB(image)
    valMax = getMaxSB(image)
    
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    for x=2:(sizeX-1)
        for y=2:(sizeY-1)
            image(x,y) = round(((image(x,y)-valMin)*255)/(valMax-valMin))
        end
    end
    res = image
endfunction
