oc new-project mssql
oadm policy add-scc-to-user anyuid -z default
oc new-app https://github.com/vlbash/mssql-centos
oc env "dc/mssqlrhel" -e ACCEPT_EULA=y -e SA_PASSWORD=!QA2ws{}
oc volume "dc/mssql-centos" --add --mount-path=/var/opt/mssql --type=persistentVolumeClaim --claim-name=mssqlrhel --claim-mode="ReadWriteOnce" --claim-size=100G
sleep 20
oc logs -f bc/mssql-centos
