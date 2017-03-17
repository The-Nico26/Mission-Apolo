//calc : soit 0 soit 1
function res=MirrorGray(calc, centerX, centerY, pourcentage)
    sizeX = size(calc, 1)
    sizeY = size(calc, 2)
    
    res = zeros(sizeX, sizeY)
    
    for x=1:sizeX
        for y=1:sizeY
            ecartX = x - centerX
            ecartY = y - centerY
            res(x+(2*ecartX*-1), y+(2*ecartY*-1)) = 1 - (calc(x,y)*pourcentage)
        end
    end
endfunction
