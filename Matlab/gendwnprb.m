function y = gendwnprb(upprbind,x)
upsqueind=x;
bon=size(upsqueind);ind=zeros(bon(1),1);
for i = 1 : bon(1)
    
    for j = 1 : bon(2)
        if upsqueind(i,j) ~= 0
            %ind(i,1)=0;
            ind(upsqueind(i,j),1)=ind(upsqueind(i,j),1)+1;
            dwnqueind(upsqueind(i,j),ind(upsqueind(i,j)))=i;
            dwnprbind(upsqueind(i,j),ind(upsqueind(i,j)))=upprbind(i,j);
        end
        
    end
    
end
y=dwnprbind;
end