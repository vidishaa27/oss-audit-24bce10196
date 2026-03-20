#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Vidis

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if package is installed
if dpkg -l | grep -w $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "FOSS Philosophy Note:"
echo "--------------------------------"

# Case statement for package description
case $PACKAGE in
    python3)
        echo "Python: A community-driven language focused on simplicity and readability."
        ;;
    git)
        echo "Git: A distributed version control system built for open collaboration."
        ;;
    apache2)
        echo "Apache: The web server that helped build the open internet."
        ;;
    mysql-server)
        echo "MySQL: Open-source database powering millions of applications."
        ;;
    *)
        echo "Unknown package. Still part of the open-source ecosystem."
        ;;
esac
