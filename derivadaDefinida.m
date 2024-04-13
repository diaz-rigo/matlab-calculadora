function varargout = derivadaDefinida(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @derivadaDefinida_OpeningFcn, ...
                   'gui_OutputFcn',  @derivadaDefinida_OutputFcn, ...
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


function derivadaDefinida_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);


function varargout = derivadaDefinida_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function Calcular_Callback(hObject, eventdata, handles)
f = str2sym(get(handles.txtFun,'string'));
v = get(handles.txtX,'string');
syms x;
der = diff(f,x);
Res = subs(der,v);
set(handles.txtRes,'string',char(der));
set(handles.txtVX,'string',char(Res));
outsrt = evalc('pretty(der)');
set(handles.txtResfun,'string',outsrt);


function Limpiar_Callback(hObject, eventdata, handles)
set(handles.txtFun,'string','');
set(handles.txtX,'string','');
set(handles.txtRes,'string','');
set(handles.txtVX,'string','');
set(handles.txtResfun,'string','');
cla(handles.axes1);  


function radiobutton1_Callback(hObject, eventdata, handles)

function radiobutton2_Callback(hObject, eventdata, handles)

function graficar_Callback(hObject, eventdata, handles)
syms x;
opc = get(handles.selector,'value');
switch opc
    case 1
        axes(handles.axes1);
        bar(0);
    case 2
        y = eval(get(handles.txtFun,'string'));
        x = eval(get(handles.txtX,'string'));
        axes(handles.axes1);
        ezplot(y);
        fill(x);
        
    case 3
        y = eval(get(handles.txtRes,'string'));
        x = eval(get(handles.txtVX,'string'));
        axes(handles.axes1);
        ezplot(y);
        fill(x);
        
    case 4
        y = eval(get(handles.txtRes,'string'));
        y1 = eval(get(handles.txtFun,'string'));
        x = eval(get(handles.txtX,'string'));
        hold on
        axes(handles.axes1);
        ezplot(y);
        ezplot(y1);
        fill(x);
        hold off
end


function txtRes_Callback(hObject, eventdata, handles)

function txtRes_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txtVX_Callback(hObject, eventdata, handles)

function txtVX_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txtFun_Callback(hObject, eventdata, handles)

function txtFun_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txtX_Callback(hObject, eventdata, handles)

function txtX_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function regresar_Callback(hObject, eventdata, handles)
close(gcbf);


function selector_Callback(hObject, eventdata, handles)

function selector_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function txtResfun_Callback(hObject, eventdata, handles)

function txtResfun_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
