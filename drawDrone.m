% droneX = drone's x coordinate
% droneY = drone's y coordinate
% droneZ = drone's z coordinate
% droneRadius = length of one of quadcopter's arms 
% droneDrawX
% droneDrawY
% droneDrawZ

droneX = 55;
droneY = 40;
droneZ = 30;
length = 5;

droneCoord = [droneX, droneY, droneZ] ;   % center of circle 
droneRadius = length ;    % Radius of circle 
droneTheta=0:0.01:2*pi ;
droneDrawX=droneCoord(1)+droneRadius*cos(droneTheta);
droneDrawY=droneCoord(2)+droneRadius*sin(droneTheta) ;
droneDrawZ = droneCoord(3)+zeros(size(droneDrawX)) ;
patch(droneDrawX,droneDrawY,droneDrawZ,'g')
hold on
droneLeftEyeX = droneCoord(1) - length / 3 + droneRadius/5*cos(droneTheta);
droneLeftEyeY = droneCoord(2) + length / 5 + droneRadius/5*sin(droneTheta);
droneLeftEyeZ = droneCoord(3)+zeros(size(droneDrawX)) ;
patch(droneLeftEyeX,droneLeftEyeY,droneLeftEyeZ,'k')

hold on
droneRightEyeX = droneCoord(1) + length / 3 + droneRadius/5*cos(droneTheta);
droneRightEyeY = droneCoord(2) + length / 5 + droneRadius/5*sin(droneTheta);
droneRightEyeZ = droneCoord(3)+zeros(size(droneDrawX)) ;
patch(droneRightEyeX,droneRightEyeY,droneRightEyeZ,'k')

hold on

droneMouthX = droneCoord(1)  + droneRadius/2*cos(droneTheta);
droneMouthY = droneCoord(2) - length / 2 + droneRadius/5*sin(droneTheta);
droneMouthZ = droneCoord(3)+zeros(size(droneDrawX)) ;
patch(droneMouthX,droneMouthY,droneMouthZ,'r')

hold on