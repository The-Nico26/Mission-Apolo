function res=Inverse(img)
    
   tailleImg = length(img)
    
    for x= 1:tailleImg
        if img(x) == 255 then
            img(x) = 0
        else
            img(x) = 255
        end
    end
    res = img
endfunction
