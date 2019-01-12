#!/bin/bash
#
#-------------------------------------------------------------------------#
# Auth: Valerii Bashtovyi                                                 #
# Date: 2019-01-12                                                        #
# File: demo.sh                                                           #
# Desc: Deployment script for demonstrating how to deploy SQL Server 2017 #
#       on Centos 7.                                                      #
#-------------------------------------------------------------------------#
#

clear
printf "\n\tThis demonstration consists of:\n\n"
printf "\t\tSample Database Load and Query\n\n"
printf "\tThe total time required to complete these steps is approximately 5 minutes.\n\n"
printf "\tLet's get started!!!\n"
read

clear

printf "\nConnect locally to the SQL Server instance to verify database access\n\n"
printf "$ sqlcmd -S localhost -U SA -P yourStrong@Password"
read
sqlcmd -S localhost -U SA -P !QA2ws{}

read
clear

printf "\n"
printf "********************************\n"
printf "*** Create a Sample Database ***\n"
printf "********************************\n"

printf "\n1. Create a sample database and load data into it using Load_DB.sql\n\n"
printf "$ more Load_DB.sql"
read
more Load_DB.sql
printf "\n"

printf "$ sqlcmd -U SA -P yourStrong@Password -i Load_DB.sql"
read
sqlcmd -U SA -P !QA2ws{} -i Load_DB.sql

printf "\n"
printf "*** Creation of Sample Database Completed ***\n"
read
clear

printf "\n2. Run queries against the sample database using Query_DB.sql\n\n"
printf "$ more Query_DB.sql"
read
more Query_DB.sql
printf "\n"
printf "$ sqlcmd -U SA -P yourStrong@Password -i Query_DB.sql"
read
sqlcmd -U SA -P !QA2ws{} -i Query_DB.sql

printf "\n"
printf "*** Queries on Sample Database Completed ***\n"
read
printf "\n\tDemonstration SQL Server 2017 on Centos Linux Complete\n\n"
