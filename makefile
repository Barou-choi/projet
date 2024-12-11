README=README.md
SCRIPT=guessinggame.sh

all: $(README)

$(README):
# Les lignes ci-dessous doivent commencer par une tabulation
	echo "# Projet de jeu de devinette" > $(README)
	echo "Date et heure d'exécution : $(shell date)" >> $(README)
	echo "Nombre de lignes dans $(SCRIPT) : $(shell wc -l < $(SCRIPT))" >> $(README)
