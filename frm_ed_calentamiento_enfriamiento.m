function varargout = frm_ed_calentamiento_enfriamiento(varargin)
% FRM_ED_CALENTAMIENTO_ENFRIAMIENTO MATLAB code for frm_ed_calentamiento_enfriamiento.fig
%      FRM_ED_CALENTAMIENTO_ENFRIAMIENTO, by itself, creates a new FRM_ED_CALENTAMIENTO_ENFRIAMIENTO or raises the existing
%      singleton*.
%
%      H = FRM_ED_CALENTAMIENTO_ENFRIAMIENTO returns the handle to a new FRM_ED_CALENTAMIENTO_ENFRIAMIENTO or the handle to
%      the existing singleton*.
%
%      FRM_ED_CALENTAMIENTO_ENFRIAMIENTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FRM_ED_CALENTAMIENTO_ENFRIAMIENTO.M with the given input arguments.
%
%      FRM_ED_CALENTAMIENTO_ENFRIAMIENTO('Property','Value',...) creates a new FRM_ED_CALENTAMIENTO_ENFRIAMIENTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before frm_ed_calentamiento_enfriamiento_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to frm_ed_calentamiento_enfriamiento_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help frm_ed_calentamiento_enfriamiento

% Last Modified by GUIDE v2.5 10-Apr-2024 08:33:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @frm_ed_calentamiento_enfriamiento_OpeningFcn, ...
                   'gui_OutputFcn',  @frm_ed_calentamiento_enfriamiento_OutputFcn, ...
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


% --- Executes just before frm_ed_calentamiento_enfriamiento is made visible.
function frm_ed_calentamiento_enfriamiento_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to frm_ed_calentamiento_enfriamiento (see VARARGIN)

% Choose default command line output for frm_ed_calentamiento_enfriamiento
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes frm_ed_calentamiento_enfriamiento wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = frm_ed_calentamiento_enfriamiento_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editTemperaturaAmbiente_Callback(hObject, eventdata, handles)
% hObject    handle to editTemperaturaAmbiente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTemperaturaAmbiente as text
%        str2double(get(hObject,'String')) returns contents of editTemperaturaAmbiente as a double


% --- Executes during object creation, after setting all properties.
function editTemperaturaAmbiente_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTemperaturaAmbiente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_C_Callback(hObject, eventdata, handles)
% hObject    handle to txt_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_C as text
%        str2double(get(hObject,'String')) returns contents of txt_C as a double


% --- Executes during object creation, after setting all properties.
function txt_C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to txt_Tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_Tiempo as text
%        str2double(get(hObject,'String')) returns contents of txt_Tiempo as a double


% --- Executes during object creation, after setting all properties.
function txt_Tiempo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_Tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_K_Callback(hObject, eventdata, handles)
% hObject    handle to txt_K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_K as text
%        str2double(get(hObject,'String')) returns contents of txt_K as a double


% --- Executes during object creation, after setting all properties.
function txt_K_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTemperaturaInicial_Callback(hObject, eventdata, handles)
% hObject    handle to editTemperaturaInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTemperaturaInicial as text
%        str2double(get(hObject,'String')) returns contents of editTemperaturaInicial as a double


% --- Executes during object creation, after setting all properties.
function editTemperaturaInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTemperaturaInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTemperaturaFinal_Callback(hObject, eventdata, handles)
% hObject    handle to editTemperaturaFinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTemperaturaFinal as text
%        str2double(get(hObject,'String')) returns contents of editTemperaturaFinal as a double


% --- Executes during object creation, after setting all properties.
function editTemperaturaFinal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTemperaturaFinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTiempoInicial_Callback(hObject, eventdata, handles)
% hObject    handle to editTiempoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTiempoInicial as text
%        str2double(get(hObject,'String')) returns contents of editTiempoInicial as a double


% --- Executes during object creation, after setting all properties.
function editTiempoInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTiempoInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTiempoFinal_Callback(hObject, eventdata, handles)
% hObject    handle to editTiempoFinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTiempoFinal as text
%        str2double(get(hObject,'String')) returns contents of editTiempoFinal as a double


% --- Executes during object creation, after setting all properties.
function editTiempoFinal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTiempoFinal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_resultado.
function btn_resultado_Callback(hObject, eventdata, handles)
% Obtener los valores de temperatura inicial y final, temperatura ambiente desde los campos de texto
T0 = str2double(get(handles.editTemperaturaInicial, 'String')); % Temperatura inicial
Tf = str2double(get(handles.editTemperaturaFinal, 'String')); % Temperatura final
Ta = str2double(get(handles.editTemperaturaAmbiente, 'String')); % Temperatura ambiente

% Obtener los valores de tiempo inicial y final desde los campos de texto
t0 = str2double(get(handles.editTiempoInicial, 'String')); % Tiempo inicial
tf = str2double(get(handles.editTiempoFinal, 'String')); % Tiempo final

% Calcular la constante C usando la temperatura inicial
C = T0 - Ta;

% Calcular la constante k
k = -log((Tf - Ta) / C) / (tf - t0);

% Inicializar el tiempo y la temperatura con los valores iniciales
t = t0;
T = T0;

% Crear una matriz para almacenar los datos de temperatura y tiempo
datos = [];

% Bucle para calcular la temperatura cambiante
while round(T, 4) > Ta
    % Mostrar el tiempo cuando la temperatura alcanza la temperatura ambiente
    set(handles.txt_Tiempo, 'String', num2str(t));
    % Calcular la temperatura cambiante
    T = C * exp(-k * t) + Ta;
    
    % Agregar los valores de temperatura y tiempo a la matriz
    datos = [datos; round(T, 4), t];
    
    % Incrementar el tiempo
    t = t + 1;
    
end

% Actualizar la tabla con los datos calculados
set(handles.Tabla, 'Data', datos);

% Calcular los valores de C y k con 4 decimales
C = round(C, 4);
k = round(k, 4);

% Mostrar los valores calculados de C y k en los campos de texto correspondientes
set(handles.txt_C, 'String', num2str(C));
set(handles.txt_K, 'String', num2str(k));

% Extraer los datos de temperatura y tiempo de la tabla
temperatura = datos(:, 1);
tiempo = datos(:, 2);

% Graficar los datos de temperatura frente al tiempo
axes(handles.axes_grafica);
plot(tiempo, temperatura, '-o');
xlabel('Tiempo');
ylabel('Temperatura');
grid on;
% hObject    handle to btn_resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_nuevo.
function btn_nuevo_Callback(hObject, eventdata, handles)
set(handles.editTemperaturaInicial, 'string', '');
set(handles.editTemperaturaFinal, 'string', '');
set(handles.editTemperaturaAmbiente, 'string', '');
set(handles.editTiempoInicial, 'string', '');
set(handles.editTiempoFinal, 'string', '');
set(handles.txt_Tiempo, 'string', '');
set(handles.txt_C, 'string', '');
set(handles.txt_K, 'string', '');
set(handles.Tabla, 'Data', {});
cla;
% hObject    handle to btn_nuevo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_cerrar.
function btn_cerrar_Callback(hObject, eventdata, handles)
close(frm_ed_calentamiento_enfriamiento)
% hObject    handle to btn_cerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
