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
    
    imgFinal = NormalisationSB(Assemblage(img1, img2))
    
    res = imgFinal
endfunction
