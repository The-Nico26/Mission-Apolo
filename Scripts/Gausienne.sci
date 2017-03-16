function res=Gausienne(image)
    calc = [
    1, 2, 3,  2, 1;
    2, 6, 8,  6, 2;
    3, 8, 10, 8, 3;
    2, 6, 8,  6, 2;
    1, 2, 3,  2, 1;]
    centerX = 3
    centerY = 3
    
    res = Convolution(image, calc, centerX, centerY, 98)
    
endfunction
