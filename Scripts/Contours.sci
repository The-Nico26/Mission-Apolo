function res=Contours(image, calc, calc2, centerX, centerY, indice)
        
    img1 = Convolution(image, calc, centerX, centerY, indice)
    img2 = Convolution(image, calc2, centerX, centerY, indice)
    
    sizeImg1X = size(image, 1)
    sizeImg1Y = size(image, 2)
    
    imgFinal = image;
    
    for x=1:sizeImg1X
        for y=1:sizeImg1Y
            imgFinal(x,y) = round(sqrt((img1(x,y)^2 + img2(x,y)^2)))
        end
    end
    
    imgFinal = NormalisationSB(imgFinal)
    
    res = imgFinal
endfunction
