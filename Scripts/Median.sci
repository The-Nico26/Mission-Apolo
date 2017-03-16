function res=Median(image)
    sizeX = size(image, 1)
    sizeY = size(image, 2)
    
    imgFinal = image
    for x=1:sizeX
        for y=1:sizeY
            tab = zeros(25)
            index = 1
            somme = 0
            for xC=1:5
                for yC=1:5
                    coX = (x-3)+xC
                    coY = (y-3)+yC
                    if ~(coX <= 0 | coY <= 0 | coX >= sizeX | coY >= sizeY) then 
                        somme = somme + image(coX, coY)
                        tab(index) = image(coX, coY)
                        index = index + 1
                    end
                end
            end
            moy = somme / length(tab)
            tabf = gsort(tab, 'g', 'i')
            nbr = image(x,y)
            
            if(nbr > moy*2 | nbr < round(moy/2))
                imgFinal(x,y) = tabf(round(length(tab)/2))
            end
        end
    end
    res = imgFinal
endfunction
