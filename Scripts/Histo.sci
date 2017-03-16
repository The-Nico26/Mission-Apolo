function res=Histo(image)
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    h = zeros(256, 1)
    z = zeros(256, 1)
    for id=1:length(h)
        h(id) = 0
        z(id) = (id-1)
    end
    
    for x=1:sizeX
        for y=1:sizeY
            v = image(x,y)+1
            h(v) = h(v) + 1
        end
    end
    res=h
    clf()
    plot(z, h)
endfunction
