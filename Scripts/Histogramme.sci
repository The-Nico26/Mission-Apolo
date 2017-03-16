function res=Histogramme(image)
    tab=[max(image)];
    nbrpixel=[max(image)];
    for i=0:255
        [x,y]=find(image==i)
        nbrpixel(i+1) = i
        tab(i+1) = length(x)
    end
    
    res = tab
    plot(nbrpixel, tab)
endfunction
