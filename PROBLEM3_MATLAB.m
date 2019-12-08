    function [final] = PROBLEM3_MATLAB()

    datap = input('Input data points here: ');

     if length(datap)-1 > 10
            error 'Polynomials are limited from 1st to 10th degree. Try Again!'
     end

    for n = 1:length(datap)-1

        PXi = polyfit(datap(:,1), datap(:,2), n);
        polval= polyval(PXi, datap(:,1));
        PYi = norm(datap(:,2) - polval);
        vector = [n,PYi];

        if n == 1
            identifier = vector;
        end

        if identifier(2) >= vector(2)
            deg = vector(1);
        end
    end

    final = polyfit(datap(:,1),datap(:,2),deg);
    fprintf('Coefficients: %f\n', final)
    end
