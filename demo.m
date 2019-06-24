% Make a Gif of psychophysical experiment! 

% Serial Image Presentation
Width = 600;Cent = Width /2 ; Center_dist = 40; Radius = 20;

figure(1)
img = 0.5 * ones(Width);
imshow(img)
four_circ = insertShape(img, 'FilledCircle', [[Cent - Center_dist, Cent - Center_dist, Radius]; 
                             [Cent - Center_dist, Cent + Center_dist, Radius];
                             [Cent + Center_dist, Cent - Center_dist, Radius]; 
                             [Cent + Center_dist, Cent + Center_dist, Radius]], ...
                        'Color', [0,0,0], 'Opacity', 1);
four_circ_illus = insertShape(four_circ, 'FilledRectangle',[Cent - Center_dist, Cent - Center_dist, 2*Center_dist, 2*Center_dist] , ...
                    'Color', [0.5,0.5,0.5], 'Opacity', 1);
figure(2)
imshow(four_circ_illus)

noiseframe = rand(Width);
figure(3)
imshow(noiseframe)
%% Without mask Kanisza Square
figure(1)
imshow(img)
gif('demo.gif', 'DelayTime',1.0)
gif('frame', gca, 'DelayTime',1.0)
imshow(four_circ_illus)
gif('frame', gca, 'DelayTime',0.02)
imshow(img)
gif('frame', gca, 'DelayTime',2.0)
%% With mask Kanisza Square
figure(1)
imshow(img)
gif('demo_delayed_noise_mask.gif', 'DelayTime',1.0)
gif('frame', gca, 'DelayTime',1.0)
imshow(four_circ_illus)
gif('frame', gca, 'DelayTime',0.01)
imshow(img)
gif('frame', gca, 'DelayTime',0.03)
imshow(noiseframe)
gif('frame', gca, 'DelayTime',0.50)
imshow(img)
gif('frame', gca, 'DelayTime',2.0)

web('demo_delayed_noise_mask.gif')