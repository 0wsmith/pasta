function points = riccioli()
    is = 0: 50;
    js = 0:200;
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
    x = (2+8*sin(i/100*pi)+9*sin((11*j+100)/400*pi)^2)*cos(4*i/125*pi);
end

function y = fy(i, j) %#ok
    y = (2+8*sin(i/100*pi)+9*sin((11*j+100)/400*pi)^2)*sin(4*i/125*pi);
end

function z = fz(i, j) %#ok
    z = j/4;
end