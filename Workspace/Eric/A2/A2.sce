//1-load image
dir_img = "C:\Users\René\Documents\GitHub\Mission-Apolo\Images\A2\"
image_in = readpbm(dir_img + "Mars_surface.pbm")

//2-Display
display_gray(image_in)

//3-scripte
SearchGrey(image_in)

//4-save
writepbm(image_in, "C:\Users\René\Documents\GitHub\Mission-Apolo\Workspace\Eric\A2\A2_test.pbm")
