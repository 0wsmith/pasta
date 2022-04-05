function points = acini_di_pepe()
    is = 0:120;
    js = 0: 30;
    points = zeros(length(is) * length(js), 3);
    for i = is
        for j = js
            p = i * length(js) + j + 1;
            x = fx(i, j);
            y = fy(i, j);
            z = fz(i, j);
            points(p, :) = [ x y z ];
        end
    end
end

function x = fx(i, j) %#ok
    x = 15 * cosd(3 * i);
end

function y = fy(i, j) %#ok
    y = 15 * sind(3 * i);
end

function z = fz(i, j) %#ok
    z = j;
end