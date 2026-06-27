function voice_wheelchair_gui()
    % Create GUI window
    fig = figure('Name', 'Voice Controlled Wheelchair', ...
        'Position', [100 100 800 500], ...
        'MenuBar', 'none', ...
        'NumberTitle', 'off', ...
        'Resize', 'off');

    % Axes for wheelchair movement visualization
    ax = axes('Parent', fig, 'Units', 'pixels', 'Position', [50 150 400 300]);
    axis(ax, [0 100 0 100]);
    grid(ax, 'on');
    xlabel(ax, 'X');
    ylabel(ax, 'Y');
    title(ax, 'Wheelchair Position & Path');
    hold(ax, 'on');

    % Plot current position (dot) and path
    wheelchair = plot(ax, 50, 50, 'bo', ...
        'MarkerSize', 15, 'MarkerFaceColor', 'blue');
    pathLine = plot(ax, 50, 50, 'r--');

    % Command display
    cmdText = uicontrol('Style', 'text', ...
        'FontSize', 11, ...
        'Position', [500 410 280 30], ...
        'String', 'Detected Command: ');

    % Record button
    uicontrol('Style', 'pushbutton', ...
        'String', 'Record Command', ...
        'FontSize', 11, ...
        'Position', [500 360 120 40], ...
        'Callback', @recordCommand);

    % Reset button
    uicontrol('Style', 'pushbutton', ...
        'String', 'Reset Position', ...
        'FontSize', 11, ...
        'Position', [660 360 120 40], ...
        'Callback', @resetPosition);

    % Movement log table
    columnNames = {'Command', 'X', 'Y'};
    dataTable = uitable('Parent', fig, ...
        'Data', {}, ...
        'ColumnName', columnNames, ...
        'Position', [500 150 280 180]);

    % Initial state
    pos = [50, 50];
    path = pos;
    logData = {};

    % Dropdown menu for simulated command recognition
    cmdList = uicontrol('Style', 'popupmenu', ...
        'String', {'forward', 'backward', 'left', 'right', 'stop'}, ...
        'FontSize', 11, ...
        'Position', [500 310 280 30]);

    %% Record Command Function
    function recordCommand(~, ~)

        fs = 16000;                     % Sampling frequency
        recObj = audiorecorder(fs,16,1);

        msgbox('Speak: forward, backward, left, right or stop','Recording');

        recordblocking(recObj,2);

        audioData = getaudiodata(recObj); %#ok<NASGU>

        % Simulated speech recognition using dropdown menu
        items = get(cmdList,'String');
        index = get(cmdList,'Value');
        command = items{index};

        % Display detected command
        set(cmdText,'String',['Detected Command: ' command]);

        % Update wheelchair position
        switch lower(command)

            case 'forward'
                pos(2) = min(pos(2)+10,100);

            case 'backward'
                pos(2) = max(pos(2)-10,0);

            case 'left'
                pos(1) = max(pos(1)-10,0);

            case 'right'
                pos(1) = min(pos(1)+10,100);

            case 'stop'
                % No movement

            otherwise
                errordlg('Unrecognized Command');
        end

        % Store path
        path(end+1,:) = pos;

        % Update wheelchair position
        set(wheelchair,'XData',pos(1),'YData',pos(2));

        % Update movement path
        set(pathLine,'XData',path(:,1),...
                     'YData',path(:,2));

        % Store command history
        logData(end+1,:) = {command,pos(1),pos(2)};

        set(dataTable,'Data',logData);

    end

    %% Reset Function
    function resetPosition(~,~)

        pos = [50 50];

        path = pos;

        logData = {};

        set(wheelchair,...
            'XData',50,...
            'YData',50);

        set(pathLine,...
            'XData',50,...
            'YData',50);

        set(cmdText,...
            'String','Detected Command: ');

        set(dataTable,...
            'Data',{});

    end

end
