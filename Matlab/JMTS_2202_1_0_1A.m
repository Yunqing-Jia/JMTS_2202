function Out = JMTS_2202_1_0_1A()
load rel_seg1;
totintnum = size(rel_seg,1);
maxsegnum = size(rel_seg,2);
%volgrpname = '';
for i = 1 : totintnum
    prompt =['The volume group of intersection #'];
    intnum = input(prompt);
    for j = 1 : maxsegnum
        prompt1 =['The volume group of intersection #',num2str(intnum),'segment',num2str(j)];
        volipt = input(prompt1);
        volgrp(j,:,intnum)=volipt; 
    end
end
%volgrp=volgrp1;
for i = 1 : totintnum
    for j = 1 : maxsegnum
        if j==1
            volgrp(j,4,i)=volgrp(2,1,i)+volgrp(3,2,i)+volgrp(4,3,i);
        elseif j ==2
            volgrp(j,4,i)=volgrp(1,3,i)+volgrp(3,1,i)+volgrp(4,2,i);
        elseif j ==3
            volgrp(j,4,i)=volgrp(1,2,i)+volgrp(2,3,i)+volgrp(4,1,i);
        elseif j ==4
            volgrp(j,4,i)=volgrp(1,1,i)+volgrp(2,2,i)+volgrp(3,3,i);
        end
    end
end

save volgrp volgrp
end