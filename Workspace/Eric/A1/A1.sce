//1-load image
//
dir_img = "C:\Users\René\Documents\GitHub\Mission-Apolo\Images\A1\"
image_in = readpbm(dir_img + "Encelade_surface(1).pbm")

//2-Display
display_gray(image_in)

//3-scripte
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
