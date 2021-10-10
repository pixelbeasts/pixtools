back=assets/backgrounds/abstract-1.gif
back_small=assets/backgrounds/abstract-1-24x24.gif
tokenId=1323
front=assets/icons/1323.png

# f:=assetes/backgrounds/abstract-1.gif

help:
	echo "example commands"

grab:
	curl "https://beastopia.com/nobg/${tokenId}.png" > assets/icons/${tokenId}.png

resize:
	tools/resize.sh ${back} 24x24

composite:
	tools/composite.sh ${back_small} ${front}

# usage
# f=path/to/file make-loop
make-loop:
	gifsicle -bl --colors 256 $f

