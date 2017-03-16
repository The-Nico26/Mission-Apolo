function res=Egalisation(image, intensite)
    
    histo = HistoLevel(HistoDens(HistoNorm(Histo(image), length(image)*intensite)))
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    res = zeros(sizeX, sizeY)
    
    for x=1:sizeX
        for y=1:sizeY
            res(x,y) = histo(image(x,y)+1)*255
        end
    end
    
endfunction
