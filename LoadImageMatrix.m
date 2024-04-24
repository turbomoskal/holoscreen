function [outMatrix] = LoadImageMatrix(inPath)
% Функция загрузки изображения-формирователя из файла
% Выдаёт матрицу значений (0 - непрозрачна, 1 - прозрачна) и её размер
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

