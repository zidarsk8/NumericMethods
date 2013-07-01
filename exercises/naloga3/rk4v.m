function [x,t] = rk4v(fun,x0,t0,tk,N)
    % [x,t] = rk4v(fun,x0,t0,tk,N)
    % izracuna priblizek x za resitev diferencialne enacbe
    % x'(t) = fun(t,x(t))
    % x(t0) = x0
    % na intervalu [t0,tk] po metodi Runge-Kutta 4.reda.
    % N je stevilo korakov

    d = length(x0);           %dimenzija sistema
    t = linspace(t0,tk,N+1);  %cas
    h = t(2)-t(1);            %korak
    x = zeros(d,N+1);         %prostor za resitev
    x(:,1) = x0;              %zacetni pogoj

    for i=1:N
        k1 = h*feval(fun,t(i),x(:,i));
        k2 = h*feval(fun,t(i)+h/2,x(:,i)+k1/2);
        k3 = h*feval(fun,t(i)+h/2,x(:,i)+k2/2);
        k4 = h*feval(fun,t(i)+h,x(:,i)+k3);
        x(:,i+1) = x(:,i)+(k1+2*k2+2*k3+k4)/6;
    end
end

