# Created by newuser for 5.0.7

greeting="Hello Johannes and Livia"
echo $greeting

a=2
b=3
c=$a+$b
echo $c


# Functions
# *********


function s () {
    cd ;
    if [ -d ./scientific_computing/week$1 ] ; then
    else
	mkdir ./scientific_computing/week$1 
    fi ;
    cd scientific_computing/week$1
}

function mandelbrot {
   local lines columns colour a b p q i pnew
   ((columns=COLUMNS-1, lines=LINES-1, colour=0))
   for ((b=-1.5; b<=1.5; b+=3.0/lines)) do
       for ((a=-2.0; a<=1; a+=3.0/columns)) do
           for ((p=0.0, q=0.0, i=0; p*p+q*q < 4 && i < 32; i++)) do
               ((pnew=p*p-q*q+a, q=2*p*q+b, p=pnew))
           done
           ((colour=(i/4)%8))
            echo -n "\\e[4${colour}m "
        done
        echo
    done
}

# Alias definitions
# *****************

    alias rm="rm -i"
    alias mv="mv -i"
    alias cp="cp -i"
    alias pylab="ipython --pylab"
    alias uni_login="ssh -2X jlade@linux.physik.uzh.ch"
