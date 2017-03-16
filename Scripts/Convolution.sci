function res=Convolution(image, calc, centerX, centerY, total)
    sizeImg = size(image)
    sizeImgX = sizeImg(1)
    sizeImgY = sizeImg(2)
    sizeCalc = size(calc)
    sizeCalcX = sizeCalc(1)
    sizeCalcY = sizeCalc(2)
    
    img = image
    
    for x=1:sizeImgX
        for y=1:sizeImgY
            
            somme = 0
            for xC=1:sizeCalcX
                for yC=1:sizeCalcY
                    coX = (x-centerX)+xC
                    coY = (y-centerY)+yC
                    if ~(coX <= 0 | coY <= 0 | coX >= sizeImgX | coY >= sizeImgY) then 
                        somme = somme + (calc(xC, yC)*image(coX, coY))
                    end
                end
            end
           pix = somme / total
           img(x,y) = round(abs(pix))
        end
    end
    
    res = img;
endfunction
