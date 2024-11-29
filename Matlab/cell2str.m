function cell_str=cell2str(cell)
row=size(cell,1); col=size(cell,2); cell_str=cell(row,col);
for i = 1 : row
    for j = 1 : col
        cell_str{i,j}=mat2str(cell{i,j});
    end
end


end