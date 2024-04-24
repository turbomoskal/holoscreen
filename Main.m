% Программа расчета голографического дисплея
% turbomoskal 2024

% Этап 1: ввод параметров (см. about.txt)


% Этап 2: подготовка изображения
matrixPath = "./imageMatrix.png";
imageMatrix = LoadImageMatrix(matrixPath);

% Отображение симуляции голограммы после расчета
contour(imageMatrix,1);