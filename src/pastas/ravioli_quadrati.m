function points = ravioli_quadrati()
    is = 0:100;
    js = 0:100;
    points = zeros(length(is) * length(js), 3);
    for i = is
        for j = js
            p = i * length(js) + j + 1;
            x = fx(i, j);
            y = fy(i, j);
            z = fz(i, j);
            points(p, :) = real([ x y z ]);
        end
    end
end

function x = fx(i, j) %#ok
    x = i/2+0.4*sin((j+2.5)/5*pi)*(sin(i/200*pi)^0.2-cos(i/200*pi)^0.2);
end

function y = fy(i, j) %#ok
    y = j/2+0.4*sin((11*i+25)/50*pi)*(sin(j/200*pi)^0.2-cos(j/200*pi)^0.2);
end

function z = fz(i, j) %#ok
    if (10 < j && j < 90) || (10 < i && i < 90)
        z = 10*sin((i-10)/80*pi)^0.6*sin((j-10)/80*pi)^0.6;
    else
        z = 0;
    end
end