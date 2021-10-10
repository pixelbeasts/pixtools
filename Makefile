back=assets/backgrounds/abstract-1.gif
back_small=assets/backgrounds/abstract-1-24x24.gif
tokenId=1323
front=assets/icons/1323.png

help:
	echo "example commands"

grab:
	curl "https://beastopia.com/nobg/${tokenId}.png" > assets/icons/${tokenId}.png

resize:
	tools/resize.sh ${back} 24x24

composite:
	tools/composite.sh ${back_small} ${front}

