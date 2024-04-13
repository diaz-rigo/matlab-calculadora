function varargout = ecuacionDiferencial(varargin)
% ECUACIONDIFERENCIAL MATLAB code for ecuacionDiferencial.fig
%      ECUACIONDIFERENCIAL, by itself, creates a new ECUACIONDIFERENCIAL or raises the existing
%      singleton*.ecuacion_Diferencial
%
%      H = ECUACIONDIFERENCIAL returns the handle to a new ECUACIONDIFERENCIAL or the handle to
%      the existing singleton*.
%
%      ECUACIONDIFERENCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACIONDIFERENCIAL.M with the given input arguments.
%
%      ECUACIONDIFERENCIAL('Property','Value',...) creates a new ECUACIONDIFERENCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ecuacionDiferencial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ecuacionDiferencial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ecuacionDiferencial

% Last Modified by GUIDE v2.5 21-Mar-2023 15:48:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ecuacionDiferencial_OpeningFcn, ...
                   'gui_OutputFcn',  @ecuacionDiferencial_OutputFcn, ...
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


% --- Executes just before ecuacionDiferencial is made visible.
function ecuacionDiferencial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ecuacionDiferencial (see VARARGIN)

% Choose default command line output for ecuacionDiferencial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ecuacionDiferencial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ecuacionDiferencial_OutputFcn(hObject, eventdata, handles) 
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

% hObject    handle to btn_calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_limpiar.
function btn_limpiar_Callback(hObject, eventdata, handles)
set(handles.txt_ecuacion,'string','');
set(handles.txt_condicion,'string','');
set(handles.txt_sincon,'string','');
set(handles.txt_concon,'string','');
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




function txt_condicion_Callback(hObject, eventdata, handles)
% hObject    handle to txt_condicion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_condicion as text
%        str2double(get(hObject,'String')) returns contents of txt_condicion as a double


% --- Executes during object creation, after setting all properties.
function txt_condicion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_condicion (see GCBO)
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
