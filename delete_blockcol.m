function delete_blockcol()
%��Щͼ��߽��ϵ�ĳЩ�еĻҶ�ֵȫ����ͬ
%�������д���ĵ�һ��
for i=1:210
    for j=1:12
        str1=strcat('F:\������\������\�������ѧ������\Numbered HKPU Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1); shuru=double(shuru);
        shuchu=shuru(:,5:size(shuru,2));  %��Ӧд�������ȥ���ģ�����Ϊʱ�����û��Щ����
%         %���ȫ���У�ûд��
%         for i=1:size(shuru,2)
%             if sum(shuru(:,i)<30)==size(shuru,1)
%                 flag(i)=1;
%             else
%                 flag(i)=0;
%             end
%         end
%         find()
        str2=strcat('F:\������\ԭ��ȥ����\HKPU\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end
for i=211:312
    for j=1:6
        str1=strcat('F:\������\������\�������ѧ������\Numbered HKPU Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1);     shuru=double(shuru);
        shuchu=shuru(:,5:size(shuru,2));
        str2=strcat('F:\������\ԭ��ȥ����\HKPU\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end


for i=1:600
    for j=1:10
        str1=strcat('F:\������\������\ȫ����ѧ������\Numered CUN Database\',int2str(i),'_',int2str(j),'.bmp');
        shuru=imread(str1);         shuru=double(shuru);
        shuchu=shuru(:,1:size(shuru,2)-2);
        str2=strcat('F:\������\ԭ��ȥ����\CUN\',int2str(i),'_',int2str(j),'.bmp');
        imwrite(uint8(shuchu),str2);
    end
end