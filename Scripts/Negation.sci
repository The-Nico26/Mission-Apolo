function res=Negation(image)
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    for x=1:sizeX
        for y=1:sizeY
            image(x,y) = 255-image(x,y)
        end
    end
    
    res = image;
endfunction
