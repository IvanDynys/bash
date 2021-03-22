 #!/bin/bash

pt=`python3 --version | tail -c 7`


if python3 --version &> /dev/null
    then echo "$(python3 --version) is installed on your computer"
else
    echo "Python 3 is not installed on your computer"
fi

echo

if python --version &> /dev/null
    then echo  "$(python --version) is installed on your computer"
else
    echo "Python 2 is not installed on your computer"
fi

echo

if [ $pt > 2 ]
    then echo -e "Which Python Version to Use?

When it comes to Python version 2 vs. 3 today, Python 3 is the outright winner.

That is because Python 2 will not be available after 2020.

Mass Python 3 adoption is the clear direction of the future.

After considering declining support for Python 2 programming language and added benefits from upgrades to Python 3, 

it is always advisable for a new developer to select Python version 3.

However, if a job demands Python 2 capabilities, that would be an only compelling reason to use this version. "	
fi
echo
