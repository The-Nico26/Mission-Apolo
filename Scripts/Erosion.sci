function res=Erosion(img)
    
    calc = [0, 0, 0; 0, 255, 255; 0, 255, 0;]
    centerX = 2
    centerY = 2
    
    img = Inverse(img)

    calc = Mirror(calc, centerX, centerY)
    
    img = Dilatation(img, calc, centerX, centerY)
    
    img = Inverse(img)
    
    res = img;
endfunction
