//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "B1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 667Cc_surface"+".pbm")

//Script de Test
//Normalisation
valMax = max(image)-min(image)

taille = length(image)
for x=1:taille
    image(x) = image(x)*255/valMax
end

//Display
display_gray(image)

//Save
//writepbm(image, "random/test.pbm")
