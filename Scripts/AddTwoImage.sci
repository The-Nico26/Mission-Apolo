function res=AddTwoImage(img1, img2)
    sizeX = size(img1, 1)
    sizeY = size(img1, 2)
    img = zeros(sizeX, sizeY)
    for x=1:sizeX
        for y=1:sizeY
            img(x,y) = min((img1(x,y)+img2(x,y)),255)
        end
    end
    
    res = img
endfunction
