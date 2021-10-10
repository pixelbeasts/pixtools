back=$1
fore=$2

output=assets/composite.gif

convert $back -coalesce null: $fore -gravity center -layers composite $output
