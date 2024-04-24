function [outMatrix] = LoadImageMatrix(inPath)
% ������� �������� �����������-������������� �� �����
% ������ ������� �������� (0 - �����������, 1 - ���������) � ţ ������
outMatrix = importdata(inPath);
outMatrix = outMatrix.cdata(:,:,1);
matrixWidth = length(outMatrix);
matrixHeight = matrixWidth;
for y = 1:matrixHeight
    for x = 1:matrixWidth
        bufferValue = outMatrix(x,y);
        outMatrix(x,y) = bufferValue / 255;
    end
end
end

