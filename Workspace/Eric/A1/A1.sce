//1-load image
//cette partie nous permet de renseigner et récupèrer l'image sur laquel nous allons travailler.
dir_img = "C:\Users\René\Documents\GitHub\Mission-Apolo\Images\A1\"
image_in = readpbm(dir_img + "Encelade_surface(1).pbm")

//2-Display
// Ce scripte va convertire la couleur des pixel en valeur numérique (allant de 0 à 255) nous permettant de travailler sur l'image.
display_gray(image_in)

//3-process
//
    va= max(image_in)
    
    taille = size(image_in)
    tailleY = taille(2)
    tailleX = taille(1)
    
    for x = tailleX:-1:1
        for y = tailleY:-1:1
            if image_in(x, y) == va then
                
                disp(string(x)+";"+string(y))
            end
        end
    end

//4-save
writepbm(image, "C:\Users\René\Documents\GitHub\Mission-Apolo\Workspace\Eric\A1\A1.pbm")