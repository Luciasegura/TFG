function sir_pid()
    % --- Condiciones iniciales ---
    S = 8000;
    I = 2000;
    R = 0;
    beta_base = 0.07;
    gamma = 0.01;
    I_setpoint = 1000;
    
    

    % Parámetros del regulador PID
    Kp = 0.01;
    Ki = 0.001;
    Kd = 0.01;
    error_prev = 0;
    error_int = 0;

    % Simulación
    dt = 0.1;
    T = 50;
    tspan = 0:dt:T;
    N = S + I + R;

    % Inicialización de resultados
    S_list = zeros(size(tspan));
    I_list = zeros(size(tspan));
    R_list = zeros(size(tspan));
    beta_list = zeros(size(tspan));

    S_list(1) = S;
    I_list(1) = I;
    R_list(1) = R;
    beta_list(1) = beta_base;

    
    for i = 2:length(tspan)
        % Control PID
        error = I_setpoint - I;
        error_int = error_int + error * dt;
        d_error = (error - error_prev) / dt;
        beta = beta_base + Kp * error + Ki * error_int + Kd * d_error;
        beta = max(beta, 0); % Limitar a valores positivos

        % Modelo SIR
        dS = -beta * S * I / N;
        dI = beta * S * I / N - gamma * I;
        dR = gamma * I;

        % Actualizar estado
        S = S + dS * dt;
        I = I + dI * dt;
        R = R + dR * dt;

        % Guardar resultados
        S_list(i) = S;
        I_list(i) = I;
        R_list(i) = R;
        beta_list(i) = beta;
        error_prev = error;
    end

    % --- Gráficas ---
    figure;
    plot(tspan, S_list, 'b', tspan, I_list, 'r', tspan, R_list, 'g', 'LineWidth', 2);
    yline(I_setpoint, 'k--', 'LineWidth', 1.2, 'Label', 'Setpoint');
    xlabel('Días'); ylabel('Personas');
    title('Modelo SIR con PID');
    legend('Susceptibles', 'Infectados', 'Recuperados', 'Setpoint');
    grid on;

    figure;
    plot(tspan, beta_list, 'm', 'LineWidth', 2);
    xlabel('Días'); ylabel('Beta (\beta)');
    title('Tasa de transmisión ajustada por PID');
    grid on;
end
