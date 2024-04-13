function varargout = transformadaDirecta(varargin)
% TRANSFORMADADIRECTA MATLAB code for transformadaDirecta.fig
%      TRANSFORMADADIRECTA, by itself, creates a new TRANSFORMADADIRECTA or raises the existing
%      singleton*.
%
%      H = TRANSFORMADADIRECTA returns the handle to a new TRANSFORMADADIRECTA or the handle to
%      the existing singleton*.
%
%      TRANSFORMADADIRECTA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRANSFORMADADIRECTA.M with the given input arguments.
%
%      TRANSFORMADADIRECTA('Property','Value',...) creates a new TRANSFORMADADIRECTA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before transformadaDirecta_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to transformadaDirecta_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help transformadaDirecta

% Last Modified by GUIDE v2.5 15-Mar-2023 10:31:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @transformadaDirecta_OpeningFcn, ...
                   'gui_OutputFcn',  @transformadaDirecta_OutputFcn, ...
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


% --- Executes just before transformadaDirecta is made visible.
function transformadaDirecta_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to transformadaDirecta (see VARARGIN)

% Choose default command line output for transformadaDirecta
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes transformadaDirecta wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = transformadaDirecta_OutputFcn(hObject, eventdata, handles) 
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



function txt_directa_Callback(hObject, eventdata, handles)
% hObject    handle to txt_directa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_directa as text
%        str2double(get(hObject,'String')) returns contents of txt_directa as a double


% --- Executes during object creation, after setting all properties.
function txt_directa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_directa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_calcular.
function btn_calcular_Callback(hObject, eventdata, handles)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f;
global directa;
f = str2sym(get(handles.txt_funcion, 'string'));  % Convert input string to symbolic expression
directa = laplace(f);  % Compute the Laplace transform
outstr = evalc('pretty(directa)');  % Pretty print the Laplace transform
set(handles.txt_directa, 'string', char(outstr));  % Display the Laplace transform in the appropriate text box
set(handles.txt_normal, 'string', char(directa));  % Display the Laplace transform as a string in another text box

% Plot the Laplace transform
syms s;  % Define the Laplace variable
dir = str2func(['@(s)' char(directa)]);  % Convert Laplace transform to a function handle
ezplot(handles.axes1, dir, [-180, 180]);  % Plot the Laplace transform


% --- Executes on button press in btn_limpiar.
function btn_limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btn_limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_funcion,'string','');
set(handles.txt_directa,'string','');
set(handles.txt_normal,'string','');
cla;


% --- Executes on button press in btn_salir.
function btn_salir_Callback(hObject, eventdata, handles)
% hObject    handle to btn_salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);



function txt_normal_Callback(hObject, eventdata, handles)
% hObject    handle to txt_normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_normal as text
%        str2double(get(hObject,'String')) returns contents of txt_normal as a double


% --- Executes during object creation, after setting all properties.
function txt_normal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
