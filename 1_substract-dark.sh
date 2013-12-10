for I in sat*; do composite -compose minus $I dark.jpg sub/$I; echo $I; done
