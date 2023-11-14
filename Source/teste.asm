#PRNAME atualizacao
#DIRNAM "C:\Users\Lucca\Documents\Iniciacao\atualizacao\Hardware\atualizacao_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
<<<<<<< HEAD
@main LOAD 2
SET maina
LOAD 3
SET mainb
LOAD mainb
ADD maina
SET mainc
=======
@main #array mainarray 2
LOAD 0
PLD 22.3
NEG
SRF
SET mainarray
LOAD 88.3
NEG
SET mainsoma0
LOAD 0
PUSH
SRF
LOAD mainarray
PLD mainsoma0
SIGN
SET maina
>>>>>>> eaec011f43a5b130c4c5ba88a5a9b7c53c35c6ce
@fim JMP fim
