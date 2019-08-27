oc delete po/fastpacman
sleep 30
oc adm new-project fastpacman --node-selector=''
oc project fastpacman
oc create -f fastpacman.yaml
oc expose po/fastpacman --port=8080
oc expose svc/fastpacman 
