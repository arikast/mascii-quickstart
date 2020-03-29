## To install and run both Mascii and Musescore from Docker

These steps allow end-to-end conversion from Mascii to target formats

1. ensure that you have Docker installed and running

2. from this directory:
```
    ./install.sh
```

3. restart your shell


You should now have these commands at your disposal in your shell:
```
    mascii2midi          
    mascii2mp3           
    mascii2mp3.timidity  
    mascii2pdf           
    mascii2png           
    mascii2xml 
```


There is a sample mascii file in the "all" directory you can use to try it out:
```
    cd all
    mascii2png sample.mascii
```

After running the above, you should see a new file called sample.png created
