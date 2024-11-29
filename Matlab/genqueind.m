function info_queind = genqueind(totintnum,num_maxque)

%volgrpname = '';
load info_quefun; load info_queseg; load rel_seg1; load info_quecha;
upsque={};
%link1_4=zeros(21,24);
n=1;
for i = 1 : totintnum
    %prompt =['The volume group of intersection #'];
    %intnum = input(prompt);
    for j = 1 : num_maxque
        if info_queseg(i,j) ~=0
           info_queind(i,j)=n;
           n=n+1;
        end
    end
end

%end