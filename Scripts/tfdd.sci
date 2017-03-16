function [ImgTrans] = tfdd(Img)
// On récupère la taille de l'image passée en paramètre
    [Height, Width] = size(Img)
    
    ImgTrans = zeros(Height, Width)
    // On boucle pour chaque pixel de l'image résultat
    for u = 1 : Height
        for v = 1 : Width
            for x = 1 : Height
                for y = 1 : Width
                    ImgTrans(u, v) = ImgTrans(u, v) + Img(x, y) *exp( ( ( -2 * %i * %pi )  ) * ( ( ( u - 1 ) * ( x - 1 ) / Height ) +( ( v - 1 ) * ( y - 1 ) / Width ) ) )
                end
            end
        end
    end
endfunction
