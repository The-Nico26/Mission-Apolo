function res=ColorRange(img, rmin, rmax)
    sizeX = size(img, 1)
    sizeY = size(img, 2)
    
    imageFinal = img
    
    for x=1:sizeX
        for y=1:sizeY
            pix = img(x,y)
            if pix > rmin & pix < rmax then
                imageFinal(x,y) = pix
            else
                imageFinal(x,y) = 0
            end
        end
    end
    res = imageFinal
endfunction
