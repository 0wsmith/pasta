function points = tortellini()
    is = 0:120;
    js = 0: 60;
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
    a = 0.2*sin(i/120*pi)+j/400;
end

function b = fb(i, j) %#ok
    b = cos(j/60*(2.7+0.2*sin(i/120*pi)^50)*pi+1.4*pi);
end

function g = fg(i, j) %#ok
    g = sin(j/60*(2.7+0.2*sin(i/120*pi)^50)*pi+1.4*pi);
end

function x = fx(i, j) %#ok
    x = 0.5^(1+.5*sin(i/120*pi))*cos((11*i-60)/600*pi)*(1.35+(3+sin(i/120*pi))*fa(i,j)*fb(i,j));
end

function y = fy(i, j) %#ok
    y = 0.5*sin((11*i-60)/600*pi)*(1.35+(0.6+sin(i/120*pi))*fa(i,j)*fb(i,j));
end

function z = fz(i, j) %#ok
    z = 0.15+i/1200+0.5*(0.8*sin(i/120*pi)+j/400)*sin(i/120*pi)*fg(i,j);
end