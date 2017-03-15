function res=Contours(image, indice)
    calc = [
    -1, -2, -1; 
    0, 0, 0; 
    1, 2, 1;]
    
    calc2 = [
    -1, 0, 1; 
    -2, 0, 2; 
    -1, 0, 1;]
    
    centerX = 2
    centerY = 2
    
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
