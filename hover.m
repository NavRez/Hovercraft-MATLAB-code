
t = 0:0.1:20;%start time at t = 0 go all the way to 90
O = (30/360)*2*pi;%set original O aka theta as 30 degrees


y = t.*sin(O);%y axis is sin

x = 90 + t.*cos(O);%x axis is cos with a headstart at 90




t = 0:0.1:24;%set time at 0 to 24 (aka points 20 to 44)

u = ((0.1*O).*t);%generate input signul u(t) to curb functions x and y to make a detour

x2 = 90 + +20*cos(O) + t.*cos(O+u);%new functions x2 starts at the point x ends

y2 = 20*sin(O) + t.*sin(O+u);%new functions y2 starts at the point y ends




t = 0:0.1:50;%generate time sequence from 0 to 50 (aka 44 to 94)

u = 4.6*O;%generate new u signal to go straight

x3 = 90 + +20*cos(O) + 24*cos(O+((0.1*O)*24)) + t.*cos(O + u);%new functions x3 starts at the point x2 ends

y3 = 20*sin(O) + 24*sin(O+((0.1*O)*24)) + t.*sin(O+ u);%new functions y3 starts at the point y2 ends




t = 0:0.1:6;%generate time sequence from 0 to 6 (aka 94 to 100)

u = - (0.2*O).*t%generate new u signal to curve function once again

x4 = 90 + +20*cos(O) + 24*cos(O+((0.1*O)*24)) + 50*cos(O + 4.6*O) + t.*cos(O + 4.6*O + u)%new functions x4 starts at the point x3 ends
y4 = 20*sin(O) + 24*sin(O+((0.1*O)*24)) + 50*sin(O+ 4.6*O)+ t.*sin(O + 4.6*O + u);%new functions y4 starts at the point y3 ends



t = 0:0.1:100%generate final sequence between 

u = - (0.2*O)*(-107);%generate final u signal to go straight through parallel pillars

x5 = 90 + +20*cos(O) + 24*cos(O+((0.1*O)*24)) + 50*cos(O + 4.6*O) + 6*cos(O + 4.6*O - (0.2*O)*6) + t.*cos(O + 4.6*O + u);%new functions x5 starts at the point x4 ends
y5 = 20*sin(O) + 24*sin(O+((0.1*O)*24)) + 50*sin(O+ 4.6*O)+ 6*sin(O + 4.6*O - (0.2*O)*6) + t.*sin(O + 4.6*O +u );%new functions y5 starts at the point y4 ends

t = 0:0.1:60%generate a new timeframe between 0 and 60

x6 = 30 + cos(400000*t)%generates pillar 1
y6 = 90 + t.*sin(3*O)%contributes into the formation of the piullars
x7 = 60 + cos(400000*t)%generates pillar 2

line([30 30],[90 180])

plot(x6,y6,x7,y6,x,y,x2,y2,x3,y3,x4,y4,x5,y5);%plot the path of the hovercraft and outline each path in colour
title('Path of Hovercraft via Kinematics')%create title and legen
legend('first bar', 'second bar','travel between 0 and 20 sec','travel between 20 and 44 sec','travel between 44 and 94 sec','travel between 94 and 100 sec','travel between 100 and 200 sec','travel between 200 and 260 sec')%outline dexription for each legend

linkdata on;%link each portion of data


    
