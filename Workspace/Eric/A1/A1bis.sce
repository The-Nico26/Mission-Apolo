//1-load image
//cette partie nous permet de renseigner et récupèrer l'image sur laquel nous allons travailler.
dir_img = "C:\Users\René\Documents\GitHub\Mission-Apolo\Images\A1\"
image_in = readpbm(dir_img + "Encelade_surface.pbm")

//2-Display
// Ce scripte va convertire les teintes de gris des pixels en valeur numérique (allant de 0 à 255) nous permettant de travailler sur l'image.
display_gray(image_in)

//3-process
//
    va = max (image_in)
    
    taille = size(image_in)
    tailleY = taille(2)
    tailleX = taille(1)
    
    for x = 1:tailleX
        for y = 1:tailleY
            if image_in(x, y) == va then
                
                disp("x=:"+string(x)+";y="+string(y))
            end
        end
    end

//4-save
writepbm(image, "C:\Users\René\Documents\GitHub\Mission-Apolo\Workspace\Eric\A1\A1.pbm")
