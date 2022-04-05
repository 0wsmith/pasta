function points = spaghetti()
    is = 0: 40;
    js = 0:100;
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
    x = 0.1 * cos(i/20*pi);
end

function y = fy(i, j) %#ok
    y = 0.1 * sin(i/20*pi);
end

function z = fz(i, j) %#ok
    z = j/10;
end