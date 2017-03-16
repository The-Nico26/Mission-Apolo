function res=Remove(img1, img2)
    sizeX = size(img1, 1)
    sizeY = size(img1, 2)
    img = zeros(sizeX, sizeY)
    for x=1:sizeX
        for y=1:sizeY
            img(x,y) = max((img1(x,y)-img2(x,y)),0)
        end
    end
    
    res = img
endfunction

function res=RemoveWithPourcent(img1, img2, pour)
    sizeX = size(img1, 1)
    sizeY = size(img1, 2)
    img = zeros(sizeX, sizeY)
    for x=1:sizeX
        for y=1:sizeY
            pix1 = img1(x,y)*pour
            pix2 = img2(x,y)*(100-pour)
            img(x,y) = max((img1(x,y)-img2(x,y)),0)
        end
    end
    
    res = img
    
endfunction