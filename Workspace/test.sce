//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "X2/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"Gliese 581d V2"+".pbm")

    calc = [
    1, 1, 1; 
    1, 1, 1; 
    1, 1, 1;]
    
    centerX = 2
    centerY = 2
    
    
//Script de Test
img = Median(image, 1.2)
img = Convolution(img, calc, centerX, centerY, 9)

//Display
display_gray(img)

//Save
writepbm(img, "final/X2B.pbm")
