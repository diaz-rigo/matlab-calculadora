function varargout = derivadaIndefinida(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @derivadaIndefinida_OpeningFcn, ...
                   'gui_OutputFcn',  @derivadaIndefinida_OutputFcn, ...
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

function derivadaIndefinida_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = derivadaIndefinida_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function Calcular_Callback(hObject, eventdata, handles)
     syms x;
    % Obtener la función ingresada por el usuario desde el cuadro de texto
    f_str = str2sym(get(handles.txtFun, 'string'));
     %  f = str2sym(get(handles.txtFun,'string'));
    % Convertir la cadena de caracteres a una expresión simbólica
  

    % Definir la variable simbólica
 

    % Calcular la derivada de la expresión simbólica
    der = diff(f_str, x);

    % Mostrar la derivada numérica en el cuadro de texto txt_resfun
    set(handles.txt_resfun, 'string', char(der));

    % Calcular la derivada con formato pretty
    outstr = evalc('pretty(der)');

    % Mostrar la derivada con formato en el cuadro de texto txtRes
    set(handles.txtRes, 'string', outstr);

function limpiar_Callback(hObject, eventdata, handles)
set(handles.txtFun,'string','');
set(handles.txtRes,'string','');
set(handles.txt_resfun,'string','');
cla(handles.graficar);

function txtRes_Callback(hObject, eventdata, handles)

function txtRes_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txtFun_Callback(hObject, eventdata, handles)

function txtFun_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function radiobutton1_Callback(hObject, eventdata, handles)

function radiobutton2_Callback(hObject, eventdata, handles)

function pushbutton3_Callback(hObject, eventdata, handles)
syms x;
opc=get(handles.selector,'value');
switch opc
    case 1
        axes(handles.graficar);
        bar(0);
    case 2
        y=eval(get(handles.txtFun,'string'));
        axes(handles.graficar);
        ezplot(y);
        
    case 3
        y=eval(get(handles.txtFun,'string'));
        syms x;
        deri=diff(y,x);
        axes(handles.graficar);
        ezplot(deri);
        
    case 4
        y=eval(get(handles.txtFun,'string'));
        y1=eval(get(handles.txtFun,'string'));
        syms x;
        deri=diff(y,x);
        hold on
        axes(handles.graficar);
        ezplot(deri);
        ezplot(y1);
        xlabel('Eje X');
        ylabel('Eje Y');
        hold off
        
end

function pushbutton4_Callback(hObject, eventdata, handles)
close(gcbf);

function selector_Callback(hObject, eventdata, handles)

function selector_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txt_resfun_Callback(hObject, eventdata, handles)

function txt_resfun_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
