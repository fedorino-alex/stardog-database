# Introduction 
Installation of Stardog graph database

## Stardog docker image build

```{bash}
docker build -t stardog-local:latest .
```

## Run docker image

```{bash}
docker run -it -v /data:/var/opt/stardog -p 5820:5820 stardog-local:latest
```

Where:
- /data: folder which is using as StarDog home dir
