function res=Erosion(img, calc, centerX, centerY)
    img = Inverse(img)

    calc = Mirror(calc, centerX, centerY)
    
    img = Dilatation(img, calc, centerX, centerY)
    
    img = Inverse(img)
    
    res = img;
endfunction
