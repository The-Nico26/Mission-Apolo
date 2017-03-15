function res=getMinSB(image)
    
    maxe = 255;
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    for x=2:(sizeX-1)
        for y=2:(sizeY-1)
            if maxe > image(x,y) then
                maxe = image(x,y)
            end
        end
    end
    
    res = maxe;
endfunction
