function varargout = integralDefinida(varargin)
% INTEGRALDEFINIDA MATLAB code for integralDefinida.fig
%      INTEGRALDEFINIDA, by itself, creates a new INTEGRALDEFINIDA or raises the existing
%      singleton*.
%
%      H = INTEGRALDEFINIDA returns the handle to a new INTEGRALDEFINIDA or the handle to
%      the existing singleton*.
%
%      INTEGRALDEFINIDA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRALDEFINIDA.M with the given input arguments.
%
%      INTEGRALDEFINIDA('Property','Value',...) creates a new INTEGRALDEFINIDA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before integralDefinida_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to integralDefinida_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help integralDefinida

% Last Modified by GUIDE v2.5 23-Mar-2023 14:35:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @integralDefinida_OpeningFcn, ...
                   'gui_OutputFcn',  @integralDefinida_OutputFcn, ...
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


% --- Executes just before integralDefinida is made visible.
function integralDefinida_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to integralDefinida (see VARARGIN)

% Choose default command line output for integralDefinida
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes integralDefinida wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = integralDefinida_OutputFcn(hObject, eventdata, handles) 
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



function txt_int_definida_Callback(hObject, eventdata, handles)
% hObject    handle to txt_int_definida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_int_definida as text
%        str2double(get(hObject,'String')) returns contents of txt_int_definida as a double


% --- Executes during object creation, after setting all properties.
function txt_int_definida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_int_definida (see GCBO)
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
global func;
global integral;
global limInf;
global limSup;
global integralRes;
f=get(handles.txt_funcion,'string'); %obtener la funcion

limInf=get(handles.txt_a,'string'); %obtener lim inferior(a)
limSup=get(handles.txt_b,'string'); %obtener lim inferior(b)
syms x; %variable de la funcion
func=str2func(['@(x)' f]);
integral=int(func,x);
integralRes=int(func,x,limInf,limSup);
set(handles.txt_integral,'String',char(integralRes));

%integrar=int(f,x,limInf,limSup); %integrar funcion con lim a,b
%set(handles.txt_integral,'string',char(integrar)); %asignar el valor

%graficar 
i=get(handles.txt_integral,'string'); %obtener el valor
%syms x; %variable de la funcion
fplot(handles.axes1,i,[-180,180]);
hold on
fplot(handles.axes1,f,[-180,180]);
%hold on
%ezplot(handles.axes1,integrar,[-180,180]);



% --- Executes on button press in btn_limpiar.
function btn_limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btn_limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_funcion,'string','');
set(handles.txt_a,'string','');
set(handles.txt_b,'string','');
set(handles.txt_integral,'string','');
cla;

% --- Executes on button press in btn_salir.
function btn_salir_Callback(hObject, eventdata, handles)
% hObject    handle to btn_salir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);



function txt_a_Callback(hObject, eventdata, handles)
% hObject    handle to txt_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_a as text
%        str2double(get(hObject,'String')) returns contents of txt_a as a double


% --- Executes during object creation, after setting all properties.
function txt_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_b_Callback(hObject, eventdata, handles)
% hObject    handle to txt_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_b as text
%        str2double(get(hObject,'String')) returns contents of txt_b as a double


% --- Executes during object creation, after setting all properties.
function txt_b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_integral_Callback(hObject, eventdata, handles)
% hObject    handle to txt_integral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_integral as text
%        str2double(get(hObject,'String')) returns contents of txt_integral as a double


% --- Executes during object creation, after setting all properties.
function txt_integral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_integral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in graficar.
function graficar_Callback(hObject, eventdata, handles)
global func limSup limInf;
syms x;
a=str2double(limSup);
b=str2double(limInf);
sel=get(handles.graficar,'Value');
switch sel
    case 1
        fplot(handles.axes1,func,[-50,50]);
    case 2
        cla(handles.axes1,'reset');
        x=linspace(a,b,100);
        y=func(x);
        plot(x,y);
        hold on;
        h=area(x,y);
        set(h,'FaceColor','green');
        grid on;
        xlabel('x');
        ylabel('y');
end
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns graficar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from graficar


% --- Executes during object creation, after setting all properties.
function graficar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
