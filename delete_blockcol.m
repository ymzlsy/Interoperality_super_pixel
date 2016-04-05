function delete_blockcol()
%有些图像边界上的某些列的灰度值全部相同
%这是所有处理的第一步
for i=1:210
    for j=1:12
        str1=strcat('F:\静脉库\公开库\香港理工大学静脉库\Numbered HKPU Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1); shuru=double(shuru);
        shuchu=shuru(:,5:size(shuru,2));  %本应写程序检测后去除的，但因为时间紧，没有些程序
%         %检测全黑列，没写完
%         for i=1:size(shuru,2)
%             if sum(shuru(:,i)<30)==size(shuru,1)
%                 flag(i)=1;
%             else
%                 flag(i)=0;
%             end
%         end
%         find()
        str2=strcat('F:\静脉库\原库去黑条\HKPU\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end
for i=211:312
    for j=1:6
        str1=strcat('F:\静脉库\公开库\香港理工大学静脉库\Numbered HKPU Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1);     shuru=double(shuru);
        shuchu=shuru(:,5:size(shuru,2));
        str2=strcat('F:\静脉库\原库去黑条\HKPU\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end


for i=1:600
    for j=1:10
        str1=strcat('F:\静脉库\公开库\全北大学静脉库\Numered CUN Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1);         shuru=double(shuru);
        shuchu=shuru(:,1:size(shuru,2)-2);
        str2=strcat('F:\静脉库\原库去黑条\CUN\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end