clear
load data.txt
ex=data(:,3);
ey=data(:,3);

ex2=reshape(ex,200,200);
ex3=rot90(ex2);

ex4=[];
for i=1:200
    a=ex3(:,i+1)-ex3(:,i);
    ex4=[ex4 a];
end

x=0:1:199;
y=0:1:200;
xy=[];
for ii=1:length(y)
    for jj=1:length(x)
        xy=[xy;x(jj) y(ii)];
    end
end
ex5=rot90(ex4);
ex5=rot90(ex5);
ex5=rot90(ex5);
ex6=ex5(:);
xyz=[xy ex6];


ey2=reshape(ey,201,201);
ey3=rot90(ey2);

ey4=[];
for i=1:200
    a1=ey3(i+1,:)-ey3(i,:);
    ey4=[ey4;a1];
end

x=0:1:200;
y=0:1:199;
xy1=[];
for ii=1:length(y)
    for jj=1:length(x)
        xy1=[xy1;x(jj) y(ii)];
    end
end
ey5=rot90(ey4);
ey5=rot90(ey5);
ey5=rot90(ey5);
ey6=ey5(:);
xyz1=[xy1 ey6];

[m,n]=size(xyz);
fid=fopen('ex_out.txt','wt');
for i=1:m
    fprintf(fid,'%12.8f\t',xyz(i,:));
    fprintf(fid,'\n');
end
fclose(fid);


[m,n]=size(xyz1);
fid=fopen('ey_out.txt','wt');
for i=1:m
    fprintf(fid,'%12.8f\t',xyz1(i,:));
    fprintf(fid,'\n');
end
fclose(fid);


d=[1,2,3;4,5,6;7,8,9];
d1=rot90(d);
d2=rot90(d1);
d3=rot90(d1);






