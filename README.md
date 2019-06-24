# psychophysical_GIF

Script to create GIF files to illustrate psychophysical / behavioral experimental paradigm. 

Majorly based on Matlab script [GIF](https://www.mathworks.com/matlabcentral/fileexchange/63239-gif) and function `insertShape` (`MATLAB>2014a`).  



## Caveat 

These script is majorly for illustrative purpose, not for precise timing! 

Theoretically, we could define the `DelayTime` for each frame in `GIF` file to 1/100 s precision. But normally, the actually timing depends on00 

* the screen refreshing rate (60Hz / 59Hz for most machine, 100Hz or 240Hz for special screen). 
* the explorer used to show the GIF. Refer to this [blog](https://www.deviantart.com/humpy77/journal/Frame-Delay-Times-for-Animated-GIFs-214150546)

We cannot rely on GIF to have ~10ms level precision, but 20-50ms should be better. So note not to set `DelayTime` as `0.01` or `0.02`. The actual timing will not be expected! 



