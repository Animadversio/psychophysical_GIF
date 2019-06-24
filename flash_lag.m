%% Flash lag
Width = 600; start_pos = [100, 200]; sq_size = 20; speed = [5,0]; 

figure(1)
img = 0.5 * ones(Width);
imshow(img)
gif('flash_lag.gif')
pos = start_pos;
for t=1:80
    img_cur = insertShape(img, 'FilledRectangle', [pos(1) - sq_size/2, pos(2) - sq_size/2, sq_size, sq_size],'Color','black', 'Opacity', 1);
    if t == 40
        img_cur = insertShape(img_cur, 'FilledRectangle', [pos(1) - sq_size/2, pos(2) + 50 - sq_size/2, sq_size, sq_size],'Color','red', 'Opacity', 1);
    end
    pos = pos + speed;
    imshow(img_cur)
    gif('frame',gca,'DelayTime',0.03)
end
web('flash_lag.gif')