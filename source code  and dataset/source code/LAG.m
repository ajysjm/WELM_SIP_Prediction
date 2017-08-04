MPB=[];
aa=zeros(1,20);
for m=1:4013
    
    g=int2str(m);
    cc=[g,'.txt'];
      filedir=['cepb\',cc];
a=load (filedir);

n=size(a,1);
if n<20
    nn=20-n
    for hh=1:nn
        a=[a;aa];
    end
end
n=size(a,1);

sn= fix(n/20);
i=1;
bb=[];

for j=1:20
    if(j==20)
        ccn=n;
    end
      jj=(j-1)*sn+1;   
      ccn=jj+sn-1;
    for jj=i:ccn
        aa=a(jj,:)+aa;
        
    end
    aa=aa/sn;
   bb=[bb aa];
end
MPB=[MPB;bb];
end

