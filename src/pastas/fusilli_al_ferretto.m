function points = fusilli_al_ferretto()
    is = 0:140;
    js = 0: 40;
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

function a = fa(i, j) %#ok
    a = (6*i/7) + 15*cos(j/20*pi);
end

function x = fx(i, j) %#ok
    x = (3+1.5*sin(i/140*pi)^.5*sin(j/20*pi))*sin(13*i/280*pi)+5*sin(2*fa(i,j)/135*pi);
end

function y = fy(i, j) %#ok
    y = (3+1.5*sin(i/140*pi)^.5*sin(j/20*pi))*cos(13*i/280*pi);
end

function z = fz(i, j) %#ok
    z = fa(i,j);
end