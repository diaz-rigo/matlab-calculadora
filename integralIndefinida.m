function varargout = integralIndefinida(varargin)
% INTEGRALINDEFINIDA MATLAB code for integralIndefinida.fig
%      INTEGRALINDEFINIDA, by itself, creates a new INTEGRALINDEFINIDA or raises the existing
%      singleton*.
%
%      H = INTEGRALINDEFINIDA returns the handle to a new INTEGRALINDEFINIDA or the handle to
%      the existing singleton*.
%
%      INTEGRALINDEFINIDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRALINDEFINIDA.M with the given input arguments.
%
%      INTEGRALINDEFINIDA('Property','Value',...) creates a new INTEGRALINDEFINIDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before integralIndefinida_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to integralIndefinida_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help integralIndefinida

% Last Modified by GUIDE v2.5 08-Apr-2024 11:11:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @integralIndefinida_OpeningFcn, ...
                   'gui_OutputFcn',  @integralIndefinida_OutputFcn, ...
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


% --- Executes just before integralIndefinida is made visible.
function integralIndefinida_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to integralIndefinida (see VARARGIN)

% Choose default command line output for integralIndefinida
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes integralIndefinida wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = integralIndefinida_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_funcion_Callback(hObject, eventdata, handles)
% hObject    handle to txt_funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_funcion as text
%        str2double(get(hObject,'String')) returns contents of txt_funcion as a double


% --- Executes during object creation, after setting all properties.
function txt_funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_indefinida_Callback(hObject, eventdata, handles)
% hObject    handle to txt_indefinida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_indefinida as text
%        str2double(get(hObject,'String')) returns contents of txt_indefinida as a double


% --- Executes during object creation, after setting all properties.
function txt_indefinida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_indefinida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_calcular.
function btn_calcular_Callback(hObject, eventdata, handles)
% hObject    handle to btn_calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%f=get(handles.txt_funcion,'string');
f = str2sym(get(handles.txt_funcion,'string'));
syms x;
integral=int(f,x);
set(handles.txt_indefinida,'string',char(integral));

%i=get(handles.txt_indefinida,'string');
i = str2sym(get(handles.txt_indefinida,'string'));
outsrt=evalc('pretty(integral)');
set(handles.txt_indefinidafun,'string',outsrt);

% Convertir la expresión simbólica a una cadena de caracteres
i = char(integral);

% Tramar la función utilizando ezplot
ezplot(handles.axes1, i, [-180, 180]);

%ezplot(handles.axes1,i,[-180,180]);


% --- Executes on button press in btn_limpiar.
function btn_limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btn_limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_funcion,'string','');
set(handles.txt_indefinida,'string','');
cla;

% --- Executes on button press in btn_salir.
function btn_salir_Callback(hObject, eventdata, handles)
% hObject    handle to btn_salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);


% --- Executes on selection change in txt_indefinidafun.
function txt_indefinidafun_Callback(hObject, eventdata, handles)
% hObject    handle to txt_indefinidafun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt_indefinidafun contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt_indefinidafun


% --- Executes during object creation, after setting all properties.
function txt_indefinidafun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_indefinidafun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
