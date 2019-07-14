# What is this Repository
- Calculate the average face among every department, every job category, etc...
- Use GAN ( Generative Adversarial Network )

# Build Image
```
docker build -t gan-kaonavi .
```

# Start up
```
docker run -it -p 8888:8888 -v $(pwd)/model:/data --rm gan-kaonavi
```
