function res=HistoLevel(histo)
    sizeX = length(histo)
    
    h = zeros(256, 1)
    z = zeros(256, 1)
    for id=1:length(h)
        h(id) = 0
        z(id) = (id-1)
    end
    valu = 0
    for x=1:sizeX
        valu = valu + histo(x)
        h(x) = valu
    end
    res = h
    
    clf()
    plot(z, h)
endfunction
