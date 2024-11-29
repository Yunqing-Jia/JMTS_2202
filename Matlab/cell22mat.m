function [y] = cell22mat(x)
    y=zeros(1,size(x,2));
    for i = 1 : size(x,2)
        uy=isempty(x(i));
        if size(cell2mat(x(i)),2) == 0
            y(i)=0;
        else
            
            y(i)=cell2mat(x(i));
        end
            
    end
end