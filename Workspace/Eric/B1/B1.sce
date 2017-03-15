//1-load image
//cette partie nous permet de renseigner et récupèrer l'image sur laquel nous allons travailler.
dir_img = "C:\Users\René\Documents\GitHub\Mission-Apolo\Images\B1\"
image_in = readpbm(dir_img + "Gliese 667Cc_surface.pbm")

//2-Display
// Ce scripte va convertire les teintes de gris des pixels en valeur numérique (allant de 0 à 255) nous permettant de travailler sur l'image.
display_gray(image_in)

//3-process
//
Function [tab] = histogramme (x)
    nb = prod (size (x))
    Data = matrix (x, 1, nb)
    Tab = zeros (1, 256)
        For i = 0:255
            tab (i+1) = length (find (data==i) 
        end 
histplot (256, sort (matrix (x, 1, nb))) 
endfunction

//For i = 1 : (length (T) -1)
//    If T(i+1)-T(i) <>1 then
//        Lmin = T(i)
//        Break
//    End
//End
//For j = length (T) : -1 : 2
//    If T(j) – T(j-1) <>1 then
//        Lmax = T(j)
//        Break
//    End
//End
//y = min (max ( (256/ (Lmax – Lmin))* x – (256/ (Lmax – Lmin))*Lmin , 0) , 255)
//imshow (y)


//4-save
writepbm(image, "C:\Users\René\Documents\GitHub\Mission-Apolo\Workspace\Eric\B1\B1.pbm")
