function varargout = ecuacion_Diferencial(varargin)
% ECUACION_DIFERENCIAL MATLAB code for ecuacion_Diferencial.fig
%      ECUACION_DIFERENCIAL, by itself, creates a new ECUACION_DIFERENCIAL or raises the existing
%      singleton*.
%
%      H = ECUACION_DIFERENCIAL returns the handle to a new ECUACION_DIFERENCIAL or the handle to
%      the existing singleton*.
%
%      ECUACION_DIFERENCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACION_DIFERENCIAL.M with the given input arguments.
%
%      ECUACION_DIFERENCIAL('Property','Value',...) creates a new ECUACION_DIFERENCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ecuacion_Diferencial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ecuacion_Diferencial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ecuacion_Diferencial

% Last Modified by GUIDE v2.5 21-Mar-2023 15:57:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ecuacion_Diferencial_OpeningFcn, ...
                   'gui_OutputFcn',  @ecuacion_Diferencial_OutputFcn, ...
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


% --- Executes just before ecuacion_Diferencial is made visible.
function ecuacion_Diferencial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ecuacion_Diferencial (see VARARGIN)

% Choose default command line output for ecuacion_Diferencial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ecuacion_Diferencial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ecuacion_Diferencial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_ecuacion_Callback(hObject, eventdata, handles)
% hObject    handle to txt_ecuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_ecuacion as text
%        str2double(get(hObject,'String')) returns contents of txt_ecuacion as a double


% --- Executes during object creation, after setting all properties.
function txt_ecuacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_ecuacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_calcular.
function btn_calcular_Callback(hObject, eventdata, handles)
% Declarar la variable simbólica
syms x y(x);

% Obtener la ecuación ingresada por el usuario
f_str = get(handles.txt_ecuacion, 'string');
f_sym = str2sym(f_str);

% Resolver la ecuación diferencial
ecuacion = dsolve(diff(y, x) == f_sym);

% Mostrar el resultado en el campo de texto
set(handles.txt_resultado, 'string', char(ecuacion));

% Graficar la función
e = char(ecuacion);
ezplot(handles.axes1, e, [-180, 180]);


% hObject    handle to btn_calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_limpiar.
function btn_limpiar_Callback(hObject, eventdata, handles)
set(handles.txt_ecuacion,'string','');
set(handles.txt_resultado,'string','');
cla;
% hObject    handle to btn_limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_salir.
function btn_salir_Callback(hObject, eventdata, handles)
close(gcbf);
% hObject    handle to btn_salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




function txt_resultado_Callback(hObject, eventdata, handles)
% hObject    handle to txt_resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_resultado as text
%        str2double(get(hObject,'String')) returns contents of txt_resultado as a double


% --- Executes during object creation, after setting all properties.
function txt_resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_sincon_Callback(hObject, eventdata, handles)
% hObject    handle to txt_sincon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_sincon as text
%        str2double(get(hObject,'String')) returns contents of txt_sincon as a double


% --- Executes during object creation, after setting all properties.
function txt_sincon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_sincon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_concon_Callback(hObject, eventdata, handles)
% hObject    handle to txt_concon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_concon as text
%        str2double(get(hObject,'String')) returns contents of txt_concon as a double


% --- Executes during object creation, after setting all properties.
function txt_concon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_concon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
