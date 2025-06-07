#!/bin/bash
calculate_area(){
        echo "enter the radius of the circle"
        read radius
        area=$(echo "3.14 * $radius * $radius" | bc)
        echo "the area of the circle is:$area"
}

calculate_area

output
enter the radius of the circle
5
the area of the circle is:78.50
