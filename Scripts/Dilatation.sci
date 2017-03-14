function res=Dilatation(img, calc, centerX, centerY)
    imgFinal = img
    sizeImg = size(img)
    sizeImgX = sizeImg(1)
    sizeImgY = sizeImg(2)
    sizeCalc = size(calc)
    sizeCalcX = sizeCalc(1)
    sizeCalcY = sizeCalc(2)
    
    for x = 1:sizeImgX
        for y = 1:sizeImgY
            if calc(centerX, centerY) == img(x, y) then
                for xC = 1:sizeCalcX
                    for yC = 1:sizeCalcY
                        if calc(xC,yC) == 255 then
                            coX = (x-centerX)+xC
                            coY = (y-centerY)+yC
                            if ~(coX <= 0 | coY <= 0 | coX >= sizeImgX | coY >= sizeImgY) then 
                                imgFinal(coX,coY) = 255
                            end
                        end
                    end
                end
            end
        end
    end
    res = imgFinal
endfunction
