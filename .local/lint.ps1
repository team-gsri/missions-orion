docker build --file ./Dockerfile --tag gsri-orion ../CONT_Orion.Malden
docker run --rm gsri-orion > ./output.log