Dir_image = "C:\Users\Victor\Documents\GitHub\Mission-Apolo\Images\B3\"
image = readpbm(Dir_image +"HD215497.pbm")
ResultMission = (Dir_image + "ResultatMission\")

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
writepbm(Froid,ResultMission+"B3Froid.pbm")
writepbm(Frais,ResultMission+"B3Frais.pbm")
writepbm(Chaud,ResultMission+"B3Chaud.pbm")
writepbm(Bouillant,ResultMission+"B3Bouillant.pbm")
