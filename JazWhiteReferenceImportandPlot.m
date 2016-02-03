%%
%This script was written to test the JAZ white reference for several
%measurements during different times of the day, then compare them in a
%plot. In the last section the average is plotted (although the average is
%caluculated in Excel).
%
%
%
%---------------------
%This section lists the files from the first measured time and imports the
%data from the first (wavelength) and fourth (spectral measurment) column.
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150617\ca 9.30');
datalist=ls('*spectrum*');
figure(1),clf
for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y; %this generates the variable 'ys' which contains all the y from the different files next to each other
sheet='9.30'; 
xlswrite('whiteref.xls',x,sheet) %writes the wavelength (x) to an excel document
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)  %writes all the y's to the same excel document that just saved the wavelength
% figure(1), hold on
% plot(x,y)
end%%
%% 

cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150617\ca 11.15');
datalist=ls('*spectrum*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
% figure(1), hold on
% plot(x,y,'r')
sheet='11.15';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)

end
%% 

cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150617\ca 12.30');
datalist=ls('*spectrum*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
% yraw=data.data(:,4); %Starting to play around to get the equation
% minuscol=data.data(:,2);
% y=(yraw-minuscol)/(whitereference-minuscol);
% figure(1), hold on
% plot(x,y,'g')
sheet='12.30';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
%%
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150807');
datalist=ls('*spectrum*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
figure(1), hold on
plot(x,y,'r')
sheet='20150807';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
% %%
%%

figure(1)
hold on
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150814');
datalist=ls('*spectrum*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
figure(1), hold on
plot(x,y,'c')
sheet='20150814';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
%%
figure(1)
hold on
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150818');
datalist=ls('*spectrum*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
figure(1), hold on
plot(x,y,'k')
sheet='20150818';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
%%
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150920');
datalist=ls('*SPECTRUM*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,4);
ys(:,ii)=y;
figure(1), hold on
plot(x,y,'b')
sheet='20150920';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
% 
%%
%References from Himalaya. No specific white ref measurements, instead
%using those that had high lux and assume the Jaz was used when sunny.
cd('C:\Users\JD\Desktop\Quality control\Reference JAZ\20150510');
datalist=ls('*FSPECTRUM0009*');

for ii=1:length(datalist)
    clear data x y
data=importdata(datalist(ii,:));
x=data.data(:,1);
y=data.data(:,3);
ys(:,ii)=y;
figure(1), hold on
plot(x,y,'k')
sheet='20150510';
xlswrite('whiteref.xls',x,sheet)
xlRange = 'B1';
xlswrite('whiteref.xls',ys,sheet,xlRange)
end
%%
% % %% 
% % %When the ys has been saved in different excel files, I have collected them
% % %all into one single excel fle and calculated the average from each
% % %wavelength and saved into the same file. Below are the wavelength and the
% % %average spectrum taken from the excel file and later plotted on top of the
% % %raw data.
% % clear
% % 
% % WL=xlsread('C:\Users\JD\Desktop\Reference JAZ\ca 9.30\whitereference.xls','Average','A1:a2048');
% % WRavg=xlsread('C:\Users\JD\Desktop\Reference JAZ\ca 9.30\whitereference.xls','Average','b1:b2048');
% % 
% %  figure(1)
% %  plot(WL,WRavg,'y*')
% % disp('Done')
