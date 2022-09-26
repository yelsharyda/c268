#!/bin/bash
echo "Enter your password:"
read pword
count="${#pword}"

if test $count -ge 8 ; then

    echo "$pword" | grep -q [0-9]

     if test $? -eq 0 ; then

           echo "$pword" | grep -q [A-Z]

                if test $? -eq 0 ; then

                    echo "$pword" | grep -q [a-z]

                       if test $? -eq 0 ; then 
                      
                             echo "Strong password"
                       
                           else

                         echo "Weak password, include lower case characters"

                       fi
                   else

                     echo "Weak password, include capital characters" 

                 fi
          else

       echo "Weak password, include numbers"   

     fi

else

    echo "Password length should be greater than or equal 8 characters"

fi
