function F = AutoContextFeatures(P,offsets)

% ----------------------------------------------------------------------
% P �ָ����ĸ���ͼ offsets ѡȡ��[2 4 8] ��������  �μ�autocontext ��ԭʼ����
% ----------------------------------------------------------------------
F = [];
for r = offsets%[5 9 13]
    for a = 0:pi/4:2*pi-pi/4
        v = r*[cos(a) sin(a)];
        T = imtranslate(P,v,'OutputView','same');
        F = cat(3,F,T);
    end
end

end