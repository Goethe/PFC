%% Inicialización automática

function varargout = single_channel(varargin)
% SINGLE_CHANNEL M-file for single_channel.fig
%      SINGLE_CHANNEL, by itself, creates a new SINGLE_CHANNEL or raises the existing
%      singleton*.
%
%      H = SINGLE_CHANNEL returns the handle to a new SINGLE_CHANNEL or the handle to
%      the existing singleton*.
%
%      SINGLE_CHANNEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINGLE_CHANNEL.M with the given input arguments.
%
%      SINGLE_CHANNEL('Property','Value',...) creates a new SINGLE_CHANNEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before single_channel_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to single_channel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help single_channel

% Last Modified by GUIDE v2.5 19-Oct-2009 09:53:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @single_channel_OpeningFcn, ...
                   'gui_OutputFcn',  @single_channel_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


%% Inicialización del dispositivo

% --- Executes just before single_channel is made visible.
function single_channel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to single_channel (see VARARGIN)
handles.ai = [];

% Compruebo si existen objetos para la adquisición de señales.
if ~isempty(daqfind)
    oldObj = daqfind;

    % Por cada uno de los objetos encontrados ...
    for i = 1:length(oldObj);
        auxStr = daqhwinfo(oldObj(i));
        auxNum = findstr(' ', auxStr.DeviceName) - 1;

        % ... compruebo si, al menos uno, está asociado a la tarjeta
        % KPCI-3108.
        if strcmp('KPCI-3108', auxStr.DeviceName(1:auxNum)) ...
                && strcmpi('analoginput', auxStr.SubsystemType);
            handles.ai = oldObj(i);
            % Si es así, informo al usuario y heredo las propiedades del
            % objeto. NO ES NECESARIO heredar las propiedades del canal
            % puesto que se creará un canal nuevo.
            warning(['El dispositivo está en uso. Reutilizarlo puede '...
                'producir fallos de funcionamiento']);
            old_f_s = handles.ai.SampleRate / 1000;
            set(handles.f_s, 'String', num2str(old_f_s, '%.0f'));
            old_d_s = handles.ai.InputType;

            if strcmp(old_d_s, 'SingleEnded')
                set(handles.d_s, 'Value', get(handles.d_s, 'Min'));
            elseif strcmp(old_d_s, 'Differential')
                set(handles.d_s, 'Value', get(handles.d_s, 'Max'));
                set(handles.channel_hw_address, 'String', ...
                    ['CH 00'; 'CH 01'; 'CH 02'; 'CH 03'; 'CH 04'; 'CH 05'; ...
                    'CH 06'; 'CH 07']);
            end

            break

        end

    end

end

% Creo un objeto relacionado con el dispositivo si no hubiese ninguno
% existente.
if isempty(handles.ai)
    try
        handles.ai = analoginput('keithley');
    catch
        errordlg('No pudo crearse el manejador de dispositivo.');
    end
end

% Establezco las propiedades por defecto.
addchannel(handles.ai,0);
set(handles.ai, 'SamplesPerTrigger', inf, 'StopFcn', @daqcallback, ...
    'StartFcn', @daqcallback, 'RuntimeErrorFcn', @daqcallback, ...
    'TimerPeriod', 0.25, 'SamplesAcquiredFcnCount', 2e3);
handles.indiceCanal = size(handles.ai.Channel, 1);
% flags(1) = {true == trigger the signal, false == continuous plotting}
% flags(2) = puntero a la primera posición del buffer vacía
% flags(3) = {true == buffer lleno, false == buffer no completamente lleno}
handles.flags = [true 1 false];
handles.buffsize = 1000;
handles.ventanaFFT = 256;
handles.func_flags = [true false];


%% Inicialización automática (cont.)

% Choose default command line output for single_channel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes single_channel wait for user response (see UIRESUME)
% uiwait(handles.single_channel);


% --- Outputs from this function are returned to the command line.
function varargout = single_channel_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%% Inicialización de elementos

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
handles.FFT = hObject;
set(hObject, 'NextPlot', 'replacechildren', 'XLim', [0 50], 'XGrid', 'on', ...
    'XTick', linspace(0, 50, 11), 'XminorTick', 'on', 'YLim', [0, 1.2], 'YGrid', ...
    'off', 'YTick', linspace(0, 1.2, 11), 'YMinorTick', 'on');

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
handles.dmTemporal = hObject;
set(hObject, 'NextPlot', 'replacechildren', 'XLim', [-5e-4, 5e-4], 'XGrid', ...
    'on', 'XTick', linspace(-5e-4, 5e-4, 11), 'XminorTick', 'on', 'YLim', ...
    [-10, 10], 'YGrid', 'on', 'YTick', linspace(-10, 10, 11), 'YMinorTick', 'on');

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function division_CreateFcn(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

set(hObject, 'String', num2str([1 2 4 10 20 40 100 200 400]'));

guidata(hObject, handles);


%% Primer panel de botones

% --- Executes on selection change in channel_hw_address.
function channel_hw_address_Callback(hObject, eventdata, handles)
handles.ai.Channel(handles.indiceCanal).HwChannel = get(hObject, 'Value') - 1;

guidata(hObject, handles);


% --- Executes on selection change in f_s.
function f_s_Callback(hObject, eventdata, handles)
old_f_s = handles.ai.SampleRate / 1000;
max_f_s = propinfo(handles.ai, 'SampleRate');
max_f_s = max_f_s.ConstraintValue(2) / 1000;
new_f_s = str2double(get(hObject, 'String'));
if isnan(new_f_s) || new_f_s < 1 || max_f_s <= new_f_s
    fprintf('Fs debe estar contenida entre %g y %g KHz\n', 1, max_f_s);
    set(hObject, 'String', num2str(old_f_s, '%.0f'));
else
    handles.ai.SampleRate = new_f_s * 1000;
    set(hObject, 'String', num2str(new_f_s, '%.0f'));
end

guidata(hObject, handles);


% --- Executes on selection change in gain.
function gain_Callback(hObject, eventdata, handles)
ganancia = get(hObject, 'Value');
rango = [10, 5, 2.5, 1.25, 1, 0.5, 0.25, 0.125, 0.1, 0.05, 0.025, 0.0125];
rango = rango(ganancia);
button_state = get(handles.u_b, 'Value');

if button_state == get(handles.u_b, 'Max')
    % U / B button is pressed
    set(handles.rango, 'String', sprintf('0, %g', rango));
    rango = [0 rango];
    set(handles.ai.Channel(handles.indiceCanal), 'InputRange', rango, ...
        'SensorRange', rango, 'UnitsRange', rango);
    set(handles.dmTemporal, 'YLim', rango, 'YTick', linspace(rango(1), ...
        rango(2), 11));
elseif button_state == get(handles.u_b, 'Min')
    % U / B button is not pressed
    set(handles.rango, 'String', sprintf('+- %g', rango));
    rango = [-rango rango];
    set(handles.ai.Channel(handles.indiceCanal), 'InputRange', rango, ...
        'SensorRange', rango, 'UnitsRange', rango);
    set(handles.dmTemporal, 'YLim', rango, 'YTick', linspace(rango(1), ...
        rango(2), 11));
end

guidata(hObject, handles);


% --- Executes on button press in u_b.
function u_b_Callback(hObject, eventdata, handles)
rango = handles.ai.Channel(handles.indiceCanal).InputRange;
rango = rango(2);
button_state = get(hObject,'Value');

if button_state == get(hObject,'Max')
    % Toggle button is pressed
    set(handles.rango, 'String', sprintf('0, %g', rango));
    rango = [0 rango];
    set(handles.ai.Channel(handles.indiceCanal), 'InputRange', rango, ...
        'SensorRange', rango, 'UnitsRange', rango);
    set(handles.dmTemporal, 'YLim', rango, 'YTick', linspace(rango(1), ...
        rango(2), 11));
elseif button_state == get(hObject,'Min')
    % Toggle button is not pressed
    set(handles.rango, 'String', sprintf('+- %g', rango));
    rango = [-rango rango];
    set(handles.ai.Channel(handles.indiceCanal), 'InputRange', rango, ...
        'SensorRange', rango, 'UnitsRange', rango);
    set(handles.dmTemporal, 'YLim', rango, 'YTick', linspace(rango(1), ...
        rango(2), 11));
end

guidata(hObject, handles);


% --- Executes on button press in d_s.
function d_s_Callback(hObject, eventdata, handles)
button_state = get(hObject,'Value');

if button_state == get(hObject,'Max')
    % Toggle button is pressed
    set(handles.channel_hw_address, 'String', ...
        ['CH 00'; 'CH 01'; 'CH 02'; 'CH 03'; 'CH 04'; 'CH 05'; 'CH 06'; 'CH 07']);
    old_hw_channel = handles.ai.Channel(handles.indiceCanal).HwChannel;
    if (7 < old_hw_channel)
        display('Canales diferenciales C [0, 7]');
        handles.ai.Channel(handles.indiceCanal).HwChannel = old_hw_channel - 8;
        set(handles.channel_hw_address, 'Value', old_hw_channel - 7);
    end
    handles.ai.InputType = 'Differential';
elseif button_state == get(hObject,'Min')
    % Toggle button is not pressed
    handles.ai.InputType = 'SingleEnded';
    set(handles.channel_hw_address, 'String', ...
        ['CH 00'; 'CH 01'; 'CH 02'; 'CH 03'; 'CH 04'; 'CH 05'; 'CH 06'; 'CH 07';...
        'CH 08'; 'CH 09'; 'CH 10'; 'CH 11'; 'CH 12'; 'CH 13'; 'CH 14'; 'CH 15']);
end

guidata(hObject, handles);


% -------------------------------------------------------------------------
% --- Executes on button press in on_off_group.
function on_off_group_SelectionChangeFcn(hObject, eventdata, handles)

switch get(hObject, 'Tag');
    case 'on'
        % Toggle button 'on' is pressed
        set(handles.channel_hw_address, 'Enable', 'off');
        set(handles.d_s, 'Enable', 'off');
        set(handles.f_s, 'Enable', 'off');
        set(handles.u_b, 'Enable', 'off');
        set(handles.gain, 'Enable', 'off');
        set(handles.media, 'Enable', 'off');
        set(handles.sencilla, 'Enable', 'off');
        set(handles.grafica, 'Enable', 'off');
        set(handles.division, 'Enable', 'off');
        set(handles.multiplo, 'Enable', 'off');

        if strcmpi(handles.ai.Running, 'Off')
           try
                button_state = get(handles.tipo_medida, 'SelectedObject');

                if button_state == handles.sencilla
                    % Toggle button 'sencilla' is pressed
                    set(handles.ai, 'TriggerType', 'Manual', 'SamplesAcquiredFcn', ...
                        '', 'TimerFcn', {@localDaqCallback, gcbo});
                    guidata(gcbo, handles);
                elseif button_state == handles.media
                    % Toggle button 'media' is pressed
                    auxNum = handles.ai.BufferingConfig;
                    auxNum = max(auxNum(1), ...
                        0.25*handles.ai.SampleRate - mod(0.25*handles.ai.SampleRate, auxNum(1)));
                    set(handles.ai, 'TriggerType', 'Immediate', 'TimerFcn', '', ...
                        'SamplesAcquiredFcn', {@localDaqCallback, gcbo}, ...
                        'SamplesAcquiredFcnCount', auxNum);
                    guidata(gcbo, handles);
                elseif button_state == handles.grafica
                    % Toggle button 'grafica' is pressed
                    auxNum = str2num(get(handles.division, 'String'))';
                    auxNum = auxNum(get(handles.division, 'Value'));
                    % Buffer ventana = 2 (Dos ventanas en memoria) * 10 (Duración de la
                    % ventana = 10 * División temporal) * División temporal
                    auxNum = 2 * auxNum * 1000^(get(handles.multiplo, 'Value') - 1);
                    handles.buffsize = auxNum / 2;
                    if auxNum < 2e3
                        handles.ai.SamplesAcquiredFcnCount = 2e3;
                        handles.flags = [true 1 false];
                    elseif auxNum < 8e4
                        handles.ai.SamplesAcquiredFcnCount = auxNum;
                        handles.flags = [true 1 false];
                    else
                        handles.ai.SamplesAcquiredFcnCount = 2e3;
                        handles.buffer = zeros(1, handles.buffsize);
                        handles.Tbuffer = linspace(-auxNum/4e5, auxNum/4e5, auxNum/2);
                        handles.flags = [false 1 false];
                    end
                    warning('El modo gráfica funciona a la máxima frecuencia posible');
                    max_f_s = propinfo(handles.ai, 'SampleRate');
                    max_f_s = max_f_s.ConstraintValue(2);
                    handles.ai.SampleRate = max_f_s;
                    set(handles.f_s, 'String', num2str(max_f_s / 1000, '%.0f'));
                    set(handles.ai, 'TriggerType', 'Immediate', 'TimerFcn', '', ...
                        'SamplesAcquiredFcn', {@localDaqCallback, gcbo});
                    guidata(gcbo, handles);
                end

                start(handles.ai);
            catch
                errordlg('No pudo iniciarse el dispositivo');
            end
        else
            warndlg('El dispositivo ya se encuentra en funcionamiento');
        end

    case 'off'
        % Toggle button 'off' is pressed
        if strcmpi(handles.ai.Running, 'On')
            try
                stop(handles.ai);
                flushdata(handles.ai);
            catch
                errordlg('No pudo detenerse el dispositivo');
            end
        end

        if get(handles.tipo_medida, 'SelectedObject') ~= handles.grafica
            set(handles.f_s, 'Enable', 'on');
        end
        set(handles.channel_hw_address, 'Enable', 'on');
        set(handles.d_s, 'Enable', 'on');
        set(handles.u_b, 'Enable', 'on');
        set(handles.gain, 'Enable', 'on');
        set(handles.media, 'Enable', 'on');
        set(handles.sencilla, 'Enable', 'on');
        set(handles.grafica, 'Enable', 'on');
        set(handles.division, 'Enable', 'on');
        set(handles.multiplo, 'Enable', 'on');
end

guidata(hObject, handles);


%% Segundo panel de botones

% --- Executes on button press in tipo_medida.
function tipo_medida_SelectionChangeFcn(hObject, eventdata, handles)
if strcmpi(get(hObject, 'Tag'), 'grafica')
    set(handles.f_s, 'Enable', 'off');
else
    set(handles.f_s, 'Enable', 'on');
end

guidata(hObject, handles);


% --- Executes on selection change in ventana.
function ventana_Callback(hObject, eventdata, handles)

new_ventana = str2double(get(hObject, 'String'));
if isnan(new_ventana) || new_ventana < 2 || 2048 < new_ventana
    fprintf('No se permiten FFTs de tamaño fuera del rango (2, 2048)\n');
    set(hObject, 'String', num2str(handles.ventanaFFT, '%.0f'));
else
    handles.ventanaFFT = 2^nextpow2(new_ventana);
    set(hObject, 'String', num2str(2^nextpow2(new_ventana), '%.0f'));
end

guidata(hObject, handles);


% --- Executes on selection change in division.
function division_Callback(hObject, eventdata, handles)

% stop(handles.ai) - De lo contrario he de bloquear el control en ON
propsname = {'NextPlot', 'XLim', 'XTick', 'XGrid', 'XMinorTick', 'YLim', ...
    'YTick', 'YGrid', 'YMinorTick'};
auxNum = str2num(get(hObject, 'String'))';
auxNum = auxNum(get(hObject, 'Value'));
auxNum = 5 * auxNum * 10^(3 * get(handles.multiplo, 'Value')) * 1e-9;
set(handles.dmTemporal, 'XLim', [-auxNum, auxNum], 'XTick', ...
    linspace(-auxNum, auxNum, 11));
propsvalue = get(handles.dmTemporal, propsname);
cla(handles.dmTemporal);
set(handles.dmTemporal, propsname, propsvalue);
% start(handles.ai) - De lo contrario he de bloquear el control en ON

guidata(hObject);


% --- Executes on selection change in multiplo.
function multiplo_Callback(hObject, eventdata, handles)

% stop(handles.ai) - De lo contrario he de bloquear el control en ON
propsname = {'NextPlot', 'XLim', 'XTick', 'XGrid', 'XMinorTick', 'YLim', ...
    'YTick', 'YGrid', 'YMinorTick'};
valor = [1, 2, 4, 10, 20, 40, 100, 200, 400];
auxNum = str2num(get(handles.division, 'String'))';
auxNum = auxNum(get(handles.division, 'Value'));

% Se ha seleccionado el multiplo us
if get(hObject, 'Value') == 1
    % La duración de la ventana no será menor a 2 ms (200 muestras a 10 KS/s)
    % Eso significa p.e. que mostrará como mínimo 10 periodos de una señal
    % cuya frecuencia sea 5 KHz.
    if auxNum < 200
        auxNum = 400;
        set(handles.division, 'Value', 2);
        warning('La duración de ventana no puede ser inferior a 2 ms');
    else
        set(handles.division, 'Value', find(valor == auxNum) - 7);
    end
    set(handles.division, 'String', num2str(valor(end-1:end)'));
% Se ha seleccionado el múltiplo ms
else
    set(handles.division, 'String', num2str(valor'), 'Value', ...
        find(valor == auxNum));
end

auxNum = 5 * auxNum * 10^(3 * get(hObject, 'Value')) * 1e-9;
set(handles.dmTemporal, 'XLim', [-auxNum, auxNum], 'XTick', ...
    linspace(-auxNum, auxNum, 11));
propsvalue = get(handles.dmTemporal, propsname);
cla(handles.dmTemporal);
set(handles.dmTemporal, propsname, propsvalue);
% start(handles.ai) - De lo contrario he de bloquear el control en ON

guidata(hObject);


% --- Executes on button press in change.
function change_Callback(hObject, eventdata, handles)

propsname = {'NextPlot', 'XLim', 'XTick', 'XGrid', 'XMinorTick', 'YLim', ...
    'YTick', 'YGrid', 'YMinorTick', 'XTickLabel', 'XTickLabelMode', ...
    'YTickLabel', 'YTickLabelMode'};
propsvaluedmT = get(handles.dmTemporal, propsname);
propsvalueFFT = get(handles.FFT, propsname);
cla(handles.dmTemporal); cla(handles.FFT);
if handles.FFT == handles.axes1
    handles.FFT = handles.axes2;
    handles.dmTemporal = handles.axes1;
    set(handles.panelGrafico1, 'Title', 'Dominio Temporal');
    set(handles.panelGrafico2, 'Title', 'FFT (KHz)');
elseif handles.FFT == handles.axes2
    handles.FFT = handles.axes1;
    handles.dmTemporal = handles.axes2;
    set(handles.panelGrafico1, 'Title', 'FFT (KHz)');
    set(handles.panelGrafico2, 'Title', 'Dominio Temporal');
else
    wrndlg('Ha ocurrido un imprevisto en el callback del botón cambio');
end
set(handles.dmTemporal, propsname, propsvaluedmT);
set(handles.FFT, propsname, propsvalueFFT);

guidata(hObject, handles);


%% Botones en los gráficos

% --- Executes on button press in bigPlus.
function bigPlus_Callback(hObject, eventdata, handles)

operation = '+';
localZoom(handles, handles.axes2, operation);

guidata(hObject, handles);


% --- Executes on button press in bigMinus.
function bigMinus_Callback(hObject, eventdata, handles)

operation = '-';
localZoom(handles, handles.axes2, operation);

guidata(hObject, handles);


% --- Executes on button press in smallPlus.
function smallPlus_Callback(hObject, eventdata, handles)

operation = '+';
localZoom(handles, handles.axes1, operation);

guidata(hObject, handles);


% --- Executes on button press in smallMinus.
function smallMinus_Callback(hObject, eventdata, handles)

operation = '-';
localZoom(handles, handles.axes1, operation);

guidata(hObject, handles);


function localZoom(handles, axes, operation)

if axes == handles.dmTemporal
    rango = [10, 5, 2.5, 1.25, 1, 0.5, 0.25, 0.125, 0.1, 0.05, 0.025, 0.0125];
elseif axes == handles.FFT
    rango = [linspace(1.2, 0.2, 6) linspace(0.1, 0.02, 5) 0.01];
end
auxNum = get(axes, 'YLim');
if operation == '+'
    auxNum(2) = rango(min(find(rango == auxNum(2)) + 1, 12));
elseif operation == '-'
    auxNum(2) = rango(max(1, find(rango == auxNum(2)) - 1));
end
if auxNum(1) ~= 0
    auxNum(1) = -auxNum(2);
end
set(axes, 'YLim', [auxNum(1), auxNum(2)], 'YTick', ...
    linspace(auxNum(1), auxNum(2), 11));


% --- Executes on button press in osc.
function osc_Callback(hObject, eventdata, handles)
button_state = get(hObject, 'Value');

if button_state == get(hObject, 'Max')
    handles.func_flags(1) = true;
elseif button_state == get(hObject, 'Min')
    handles.func_flags(1) = false;
end

guidata(hObject, handles);


% --- Executes on button press in fft_on_off.
function fft_on_off_Callback(hObject, eventdata, handles)
button_state = get(hObject, 'Value');

if button_state == get(hObject, 'Max')
    handles.func_flags(2) = true;
elseif button_state == get(hObject, 'Min')
    handles.func_flags(2) = false;
end

guidata(hObject, handles);


%% Event callbacks

% --- Executes on a device event.
function localDaqCallback(obj, event, hObject)
% Determine the type of event.
handles = guidata(hObject);
EventType = event.Type;

switch lower(EventType)
    case 'samplesacquired'
        button_state = get(handles.tipo_medida, 'SelectedObject');

        if button_state == handles.media
            if obj.SamplesAvailable ~= 0
                auxNum = getdata(obj, min(obj.SamplesAvailable, ...
                    obj.SamplesAcquiredFcnCount));
                auxNum = mean(auxNum(:, handles.indiceCanal));
                set(handles.medida, 'String', num2str(auxNum, '%.2f'));
            end
        elseif button_state == handles.grafica
            % Comprobación de seguridad, getdata de 0 muestras == error
            if obj.SamplesAvailable ~= 0
                [m, t] = getdata(obj, min(obj.SamplesAvailable, ...
                    obj.SamplesAcquiredFcnCount));
                m = m(:, handles.indiceCanal);
                m = m - (max(m) + min(m))/2;

                if handles.func_flags(1) == true
                    % Método 1 (Duración ventana inferior a 400 ms)
                    if handles.flags(1) == true
                        j = 0;
                        trig = zeros(1, max(1000, handles.buffsize / 2));
                        for i = (handles.buffsize/2):(length(m)-handles.buffsize/2)
                            if m(i+1)*m(i) < 0 && m(i) < 0
                                j = j + 1;
                                trig(j) = i;
                            end
                        end

                        if j ~= 0
                            % Los valores relevantes de trigger son índices, y
                            % por tanto, enteros positivos. Elimino los ceros
                            trig = trig(trig ~= 0);
                            % Utilizo la toma completa para hacer el shift
                            auxNum = min(abs(trig - length(m) / 2));
                            % El trigger más cercano al centro de la toma
                            % cumplirá que min(muestras) a izda. y dcha. = max
                            auxNum = trig(trig == length(m) / 2 + auxNum | ...
                                trig == length(m) / 2 - auxNum);
                            % Decido entre dos posibles valores de trigger que
                            % cumplan las condiciones especificadas
                            auxNum = auxNum(1);
                            t0 = t(auxNum + 1) - m(auxNum + 1)* ...
                                (t(auxNum + 1) - t(auxNum))/(m(auxNum + 1) - m(auxNum));
                            t = t - t0;
                        end
                        plot(handles.dmTemporal, t, m);

                        % Método 2 (Duración ventana superior a 400 ms)
                    elseif handles.flags(1) == false
                        auxNum = handles.flags(2);
                        handles.buffer((auxNum - 1)*2000 + 1:auxNum*2000) = m';
                        if handles.flags(3) == false
                            plot(handles.dmTemporal, ...
                                handles.Tbuffer(end - auxNum*2000 + 1:end), ...
                                handles.buffer(1:auxNum*2000));
                        else
                            plot(handles.dmTemporal, handles.Tbuffer, ...
                                handles.buffer);
                        end
                        handles.flags(2) = handles.flags(2) + 1;
                        if handles.flags(2) * 2000 > handles.buffsize
                            handles.flags = [false 1 true];
                        end
                    end
                end

                if handles.func_flags(2) == true
                    M = fft(m, handles.ventanaFFT);
                    F = 50*linspace(0, 1, handles.ventanaFFT/2)';
                    plot(handles.FFT, F, abs(M(1:handles.ventanaFFT/2))/max(abs(M)));
                end
            end
        end

    case 'timer'
        auxNum = getsample(handles.ai);
        auxNum = auxNum(handles.indiceCanal);
        set(handles.medida, 'String', num2str(auxNum, '%.2f'));
end

guidata(hObject, handles);


%% Liberación de recursos y limpieza

% --- Executes when user attempts to close single_channel.
function single_channel_CloseRequestFcn(hObject, eventdata, handles)

try
    if strcmpi(handles.ai.Running, 'On')
        stop(handles.ai);
        flushdata(handles.ai);
    end
    if handles.indiceCanal <= size(handles.ai.Channel, 1)
        delete(handles.ai.Channel(handles.indiceCanal));
    end
    handles.ai.SamplesAcquiredFcn = '';
catch
    errordlg('No pudo detenerse correctamente el dispositivo');
end

clc;
delete(hObject);
