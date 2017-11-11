#!/usr/bin/env bash
RESET="\e[0m"
YELLOW="\e[93m"
GREEN="\e[32m"
RED="\e[31m"
BOLD="\e[1m"
INVERT="\e[7m"
PROJECTNAME=`cat pom.xml | grep "finalName" | sed -e 's/>/ /g' | sed -e 's/</ /g' | sed -e 's/\// /g' | sed -e 's/finalName/ /g' | sed -e 's/^[ \t]*//'`
echo "+-------------------------------------------+"
echo -e "| ${INVERT}${BOLD} Purge ${RESET} and ${INVERT}${BOLD} build ${RESET} commandline w. ${BOLD}maven${RESET}  |"
echo "+-------------------------------------------+"
echo ""
echo -e "1. Project name from ${BOLD}${YELLOW}pom.xml${RESET}: ${BOLD}${GREEN}$PROJECTNAME${RESET}"
echo ""
echo "2. Purging the folders"
rm -fr target/
mkdir target/
chmod 777 target/
rm -fr bin/
mkdir bin/
chmod 777 bin/
echo -e "3. Building... ${BOLD}${YELLOW}mvn clean package${RESET}"
mvn clean package > target/build.log
echo -e "4. Adding... ${BOLD}${YELLOW}README.md${RESET} files."
touch target/README.md
echo "# Target" >> target/README.md
echo "---"      >> target/README.md
echo ""         >> target/README.md
echo -e "   ${YELLOW}target/${RESET} ${BOLD}${GREEN}Done!${RESET}"
touch bin/README.md
echo "# bin" >> bin/README.md
echo "---"      >> bin/README.md
echo ""         >> bin/README.md
echo -e "   ${YELLOW}bin/${RESET} ${BOLD}${GREEN}Done!${RESET}"
echo ""

if [ "$?" -eq "0" ]
then
    echo -e "   ${BOLD}${GREEN}OK!${RESET}"
    ARTEFACTS=`ls -lah target/*.jar | sed 's/\n/ /g'`
    echo "   Artifacts produced: "
    echo -e "${BOLD}${YELLOW}${ARTEFACTS}${RESET}"
    echo "--- Done ---"
    echo ""
    exit 0
else
    echo -e "   ${BOLD}${RED}Error!${RESET} Please check ${BOLD}${YELLOW}target/build.log${RESET}"
    echo "--- Done ---"
    echo ""
    exit 1
fi
