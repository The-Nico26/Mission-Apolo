//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "N2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
img = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Formes"+".pbm")

//Script translate binary
imgFinal = ToBinary(img, 100)

//Script de dilation
calc = [0, 0, 0; 0, 255, 255; 0, 255, 0;]
centerX = 2
centerY = 2

//Script d'inversion d'image

//Script d'érosion

imgFinal = Erosion(imgFinal, calc, centerX, centerY)


//Display
display_gray(imgFinal)

//Save
writepbm(imgFinal, "random/test.pbm")
