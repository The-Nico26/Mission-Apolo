Dir_image = "../Images/B3/"
R1esultMission =  "final/"
funcprot(0);

DIR_SCRIPT_NAME = "../Scripts/"
getd(DIR_SCRIPT_NAME)

image = readpbm(Dir_image +"HD215497.pbm")


//Après étude de l'histogramme on défini les plages de couleurs
Froid = ColorRange(image,0,19)
Frais = ColorRange(image,20,35)
Chaud = ColorRange(image,36,150)
Bouillant = ColorRange(image,151,255)

//On améliore les images pour plus de visibilité
imgFroid = Normalisation(Froid)
imgFrais = Normalisation(Frais)
imgChaud = Normalisation(Chaud)
imgBouillant = Normalisation(Bouillant)

//On crée les images séparement
writepbm(imgFroid,ResultMission+"B3Froid.pbm")
writepbm(imgFrais,ResultMission+"B3Frais.pbm")
writepbm(imgChaud,ResultMission+"B3Chaud.pbm")
writepbm(imgBouillant,ResultMission+"B3Bouillant.pbm")
