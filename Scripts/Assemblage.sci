function res=Assemblage(img1, img2)
    sizeImg1X = size(img1, 1)
    sizeImg1Y = size(img1, 2)
    
    imgFinal = img1;
    
    for x=1:sizeImg1X
        for y=1:sizeImg1Y
            imgFinal(x,y) = round(sqrt((img1(x,y)^2 + img2(x,y)^2)))
        end
    end
    res = imgFinal
endfunction
