//Variable Local
DIR_IMG_NAME = "../Images/"
DIR_IMG_MISSION = "U1/"
DIR_SCRIPT_NAME = "../Scripts/"

//Load Image
getd(DIR_SCRIPT_NAME)
image = readpbm(DIR_IMG_NAME+DIR_IMG_MISSION+"U1_surface"+".pbm")


//Script de Test
//Contours
calc = [
-1, -2, -1; 
0, 0, 0; 
1, 2, 1;]

calc2 = [
-1, 0, 1; 
-2, 0, 2; 
-1, 0, 1;]

centerX = 2
centerY = 2

img1 = Convolution(image, calc, centerX, centerY, 6)
img2 = Convolution(image, calc2, centerX, centerY, 6)

sizeImg1X = size(image, 1)
sizeImg1Y = size(image, 2)

imgFinal = image;

for x=1:sizeImg1X
    for y=1:sizeImg1Y
        imgFinal(x,y) = sqrt((img1(x,y)^2 + img2(x,y)^2))
    end
end

imgFinal = NormalisationSB(imgFinal)

//Display
display_gray(imgFinal)

//Save
//writepbm(image, "random/test.pbm")
