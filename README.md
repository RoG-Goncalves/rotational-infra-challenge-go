# Rotational Infra - Challenge - GO VERSION

## how to use
### to build and test the image
*1* - navigate to the folder where you cloned the repo  
*2* - execute `docker build -t [IMAGE NAME] .`  
*3* - execute `docker container run -it -p 3000:3000 [IMAGE NAME]`
### to build a cluster using the YAML 
#### **I consider, at this point, that you have a stablished cluster**  
**You should tag and upload your image to a repo hub**  
*1* - execute `docker tag [IMAGE NAME:TAG] [NEW IMAGE NAME:TAG]` and now push it to your favorite hub  
**You now should update the yaml file with the address to your image**  
then,  
*2* - run `docker apply -f myapp.yaml`  
*3* - run `kubectl expose deployment [app] --type=LoadBalancer --name=my-service`  
*4* - execute `kubectl get services my-service` and take note of the `External IP`  
*5* - to test it, open your browser and navigate to `[CLUSTER EXTERNAL IP:3000]`
