clear
%mkdir '���ӿƼ���ѧ����ѧ�빤��ѧԺ��ʦ���'
%cd '���ӿƼ���ѧ����ѧ�빤��ѧԺ��ʦ���'
options = weboptions('CharacterEncoding','UTF-8');%��ֹ����
path='http://sose.uestc.edu.cn/szdw/szdwjs.htm';
b=webread(path,options);
expression = '<(\w+).*>.*</\1>';
[tokens,matches] = regexp(b,expression,'tokens','match');
%filename='b.txt';
%fid=fopen(filename,'a');
%fclose(fid);
pat01 = 'title\=(\s*\S+)\s+';%��ȡ�ض��ַ�
allres = regexp(b,pat01,'tokens');
allres=string(allres);
m=regexp(allres,'[^\x00-\xff]{1,3}','match');%��ȡ����
m=string(m);
