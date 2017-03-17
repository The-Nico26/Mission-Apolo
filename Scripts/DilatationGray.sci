//Calc : soit 0 soit 1. Pourcentage : entre 0 et 1
function res=DilatationGray(image, calc, centerX, centerY, pourcentage)
    
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    sizeCX = size(calc, 1)
    sizeCY = size(calc, 2)
    
    res = zeros(sizeX, sizeY)
    
    for x=1:sizeX
        for y=1:sizeY
            for xC=1:sizeCX
                for yC=1:sizeCY
                    if calc(xC, yC) > 0 then
                        coX = (x-centerX)+xC
                        coY = (y-centerY)+yC
                        if ~(coX <= 0 | coY <= 0 | coX >= sizeX | coY >= sizeY) then 
                            image(coX, coY) = calc(xC, yC) * pourcentage * image(coX, coY)
                        end
                    end
                end
            end
        end
    end
    
    res = image
endfunction
