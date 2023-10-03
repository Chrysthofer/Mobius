#PRNAME atualizacao
#DIRNAM "C:\Users\Lucca\Documents\Iniciacao\atualizacao\Hardware\atualizacao_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
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
@fim JMP fim
