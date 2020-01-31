clear
%mkdir '电子科技大学光电科学与工程学院老师简介'
%cd '电子科技大学光电科学与工程学院老师简介'
options = weboptions('CharacterEncoding','UTF-8');%防止乱码
path='http://sose.uestc.edu.cn/szdw/szdwjs.htm';
b=webread(path,options);
expression = '<(\w+).*>.*</\1>';
[tokens,matches] = regexp(b,expression,'tokens','match');
%filename='b.txt';
%fid=fopen(filename,'a');
%fclose(fid);
pat01 = 'title\=(\s*\S+)\s+';%提取特定字符
allres = regexp(b,pat01,'tokens');
allres=string(allres);
m=regexp(allres,'[^\x00-\xff]{1,3}','match');%提取汉字
m=string(m);
