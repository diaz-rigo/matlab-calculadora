function varargout = derivadasParciales(varargin)
% DERIVADASPARCIALES MATLAB code for derivadasParciales.fig
%      DERIVADASPARCIALES, by itself, creates a new DERIVADASPARCIALES or raises the existing
%      singleton*.
%
%      H = DERIVADASPARCIALES returns the handle to a new DERIVADASPARCIALES or the handle to
%      the existing singleton*.
%
%      DERIVADASPARCIALES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DERIVADASPARCIALES.M with the given input arguments.
%
%      DERIVADASPARCIALES('Property','Value',...) creates a new DERIVADASPARCIALES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before derivadasParciales_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to derivadasParciales_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help derivadasParciales

% Last Modified by GUIDE v2.5 21-Mar-2023 21:56:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @derivadasParciales_OpeningFcn, ...
                   'gui_OutputFcn',  @derivadasParciales_OutputFcn, ...
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


% --- Executes just before derivadasParciales is made visible.
function derivadasParciales_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to derivadasParciales (see VARARGIN)

% Choose default command line output for derivadasParciales
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes derivadasParciales wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = derivadasParciales_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f
opc=get(handles.selector,'value');

switch opc
    case 1
        %Escoger
         %Cambiar texto de los static text
        set(handles.text4,'string','F()');
        set(handles.text5,'string','F()');
        set(handles.text6,'string','F()');
        set(handles.text7,'string','F()');
        set(handles.text8,'string','F()');
        set(handles.text9,'string','F()');
        set(handles.text10,'string','F()');
        set(handles.text11,'string','F()');
        set(handles.text12,'string','F()');
        %Modificar edit text
        set(handles.txt1,'string','Escoger');
        set(handles.txt2,'string','Escoger');
        set(handles.txt3,'string','Escoger');
        set(handles.txt4,'string','Escoger');
        set(handles.txt5,'string','Escoger');
        set(handles.txt5,'string','Escoger');
        set(handles.txt6,'string','Escoger');
        set(handles.txt7,'string','Escoger');
        set(handles.txt8,'string','Escoger');
        set(handles.txt9,'string','Escoger');
        set(handles.txt10,'string','Escoger');
        set(handles.txt11,'string','Escoger');
        set(handles.txt12,'string','Escoger');
        set(handles.txt13,'string','Escoger');
        set(handles.txt14,'string','Escoger');
        set(handles.txt15,'string','Escoger');
    case 2
        %X(Variables X,Y)
        %Cambiar texto de los static text
        set(handles.text4,'string','F(x)');
        set(handles.text5,'string','F(y)');
        set(handles.text6,'string','F(xx)');
        set(handles.text7,'string','F(xy)');
        set(handles.text8,'string','F(xxx)');
        set(handles.text9,'string','F(xyy)');
        set(handles.text10,'string','F(xxy)');
        set(handles.text11,'string','F(xyx)');
        set(handles.text12,'string','F(xxxx)');
        
        %f=get(handles.txtFun,'string');
        f = str2sym(get(handles.txtFun,'string')); 
        syms x;
        syms y;
        fx=diff(f,x);
        set(handles.txt1,'string',char(fx));
        fy=diff(f,y);
        set(handles.txt2,'string',char(fy));
        fxx=diff(fx,x);
        set(handles.txt3,'string',char(fxx));
        fxy=diff(fx,y);
        set(handles.txt4,'string',char(fxy));
        fxxx=diff(fxx,y);
        set(handles.txt5,'string',char(fxxx));
        fxyy=diff(fxy,y);
        set(handles.txt6,'string',char(fxyy));
        fxxy=diff(fxx,y);
        set(handles.txt7,'string',char(fxxy));
        fxyx=diff(fxy,x);
        set(handles.txt8,'string',char(fxyx));
        fxxxx=diff(fxxx,x);
        set(handles.txt9,'string',char(fxxxx));
        
    case 3
        %%X(Variables X,Y,Z)
         %Cambiar texto de los static text
        set(handles.text4,'string','F(x)');
        set(handles.text5,'string','F(y)');
        set(handles.text6,'string','F(z)');
        set(handles.text7,'string','F(xx)');
        set(handles.text8,'string','F(xy)');
        set(handles.text9,'string','F(xz)');
        set(handles.text10,'string','F(xxx)');
        set(handles.text11,'string','F(xxy)');
        set(handles.text12,'string','F(xxz)');
        
       % f=get(handles.txtFun,'string');
        f = str2sym(get(handles.txtFun,'string')); 

        syms x;
        syms y;
        syms z;
        fx=diff(f,x);
        set(handles.txt1,'string',char(fx));
        fy=diff(f,y);
        set(handles.txt2,'string',char(fy));
        fz=diff(f,z);
        set(handles.txt3,'string',char(fz));
        fxx=diff(fx,x);
        set(handles.txt4,'string',char(fxx));
        fxy=diff(fx,y);
        set(handles.txt5,'string',char(fxy));
        fxz=diff(fx,z);
        set(handles.txt6,'string',char(fxz));
        fxxx=diff(fxx,x);
        set(handles.txt7,'string',char(fxxx));
        fxxy=diff(fxx,y);
        set(handles.txt8,'string',char(fxxy));
        fxxz=diff(fxx,z);
        set(handles.txt9,'string',char(fxxz));
        
        
    case 4
        %Y(Variables X,Y)
        %Cambiar texto de los static text
        set(handles.text4,'string','F(y)');
        set(handles.text5,'string','F(x)');
        set(handles.text6,'string','F(yy)');
        set(handles.text7,'string','F(yx)');
        set(handles.text8,'string','F(yyy)');
        set(handles.text9,'string','F(yxx)');
        set(handles.text10,'string','F(yyx)');
        set(handles.text11,'string','F(yxy)');
        set(handles.text12,'string','F(yyyy)');
        
        %f=get(handles.txtFun,'string');
        f = str2sym(get(handles.txtFun,'string')); 

        syms x;
        syms y;
        fy=diff(f,y);
        set(handles.txt1,'string',char(fy));
        fx=diff(f,x);
        set(handles.txt2,'string',char(fx));
        fyy=diff(fy,y);
        set(handles.txt3,'string',char(fyy));
        fyx=diff(fy,x);
        set(handles.txt4,'string',char(fyx));
        fyyy=diff(fyy,y);
        set(handles.txt5,'string',char(fyyy));
        fyxx=diff(fyx,x);
        set(handles.txt6,'string',char(fyxx));
        fyyx=diff(fyy,x);
        set(handles.txt7,'string',char(fyyx));
        fyxy=diff(fyx,y);
        set(handles.txt8,'string',char(fyxy));
        fyyyy=diff(fyyy,y);
        set(handles.txt9,'string',char(fyyyy));
        
    case 5
        %Y(Variables X,Y,Z)
         %Cambiar texto de los static text
        set(handles.text4,'string','F(y)');
        set(handles.text5,'string','F(x)');
        set(handles.text6,'string','F(z)');
        set(handles.text7,'string','F(yy)');
        set(handles.text8,'string','F(yx)');
        set(handles.text9,'string','F(yz)');
        set(handles.text10,'string','F(yyy)');
        set(handles.text11,'string','F(yyx)');
        set(handles.text12,'string','F(yyz)');
        
       % f=get(handles.txtFun,'string');
        f = str2sym(get(handles.txtFun,'string')); 

        syms x;
        syms y;
        syms z;
        fy=diff(f,y);
        set(handles.txt1,'string',char(fy));
        fx=diff(f,x);
        set(handles.txt2,'string',char(fx));
        fz=diff(f,z);
        set(handles.txt3,'string',char(fz));
        fyy=diff(fy,y);
        set(handles.txt4,'string',char(fyy));
        fyx=diff(fy,x);
        set(handles.txt5,'string',char(fyx));
        fyz=diff(fy,z);
        set(handles.txt6,'string',char(fyz));
        fyyy=diff(fyy,y);
        set(handles.txt7,'string',char(fyyy));
        fyyx=diff(fyy,x);
        set(handles.txt8,'string',char(fyyx));
        fyyz=diff(fyy,z);
        set(handles.txt9,'string',char(fyyz));
        
    case 6
        %Z(Variables X,Y,Z)
        %Cambiar texto de los static text
        set(handles.text4,'string','F(z)');
        set(handles.text5,'string','F(x)');
        set(handles.text6,'string','F(y)');
        set(handles.text7,'string','F(zz)');
        set(handles.text8,'string','F(zx)');
        set(handles.text9,'string','F(zy)');
        set(handles.text10,'string','F(zzz)');
        set(handles.text11,'string','F(zzx)');
        set(handles.text12,'string','F(zzy)');
        
        %f=get(handles.txtFun,'string');
        f = str2sym(get(handles.txtFun,'string')); 

        syms x;
        syms y;
        syms z;
        fz=diff(f,z);
        set(handles.txt1,'string',char(fz));
        fx=diff(f,x);
        set(handles.txt2,'string',char(fx));
        fy=diff(f,y);
        set(handles.txt3,'string',char(fy));
        fzz=diff(fz,z);
        set(handles.txt4,'string',char(fzz));
        fzx=diff(fz,x);
        set(handles.txt5,'string',char(fzx));
        fzy=diff(fz,y);
        set(handles.txt6,'string',char(fzy));
        fzzz=diff(fzz,z);
        set(handles.txt7,'string',char(fzzz));
        fzzx=diff(fzz,x);
        set(handles.txt8,'string',char(fzzx));
        fzzy=diff(fzz,y);
        set(handles.txt9,'string',char(fzzy));
        
        
end

% --- Executes on button press in Limpiar.
function Limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to Limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        %Cambiar texto de los static text
        set(handles.text4,'string','F()');
        set(handles.text5,'string','F()');
        set(handles.text6,'string','F()');
        set(handles.text7,'string','F()');
        set(handles.text8,'string','F()');
        set(handles.text9,'string','F()');
        set(handles.text10,'string','F()');
        set(handles.text11,'string','F()');
        set(handles.text12,'string','F()');
        %Limpiar resultados
        set(handles.txt1,'string','');
        set(handles.txt2,'string','');
        set(handles.txt3,'string','');
        set(handles.txt4,'string','');
        set(handles.txt5,'string','');
        set(handles.txt5,'string','');
        set(handles.txt6,'string','');
        set(handles.txt7,'string','');
        set(handles.txt8,'string','');
        set(handles.txt9,'string','');
        set(handles.txt10,'string','');
        set(handles.txt11,'string','');
        set(handles.txt12,'string','');
        set(handles.txt13,'string','');
        set(handles.txt14,'string','');
        set(handles.txt15,'string','');

% --- Executes on button press in Regresar.
function Regresar_Callback(hObject, eventdata, handles)
% hObject    handle to Regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcbf);

% --- Executes on selection change in popmenu.
function popmenu_Callback(hObject, eventdata, handles)
% hObject    handle to popmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popmenu
global f
opc=get(handles.popmenu,'value');
switch opc
    case 1
        axes(handles.grafica);
        bar(0);
    case 2
        hold off
        ezsurf(f);
    case 3
        fx=get(handles.txt1,'String');

        hold off
        ezsurf(fx);
end

% --- Executes during object creation, after setting all properties.
function popmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Graficar.
function Graficar_Callback(hObject, eventdata, handles)
% hObject    handle to Graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in txt1.
function txt1_Callback(hObject, eventdata, handles)
% hObject    handle to txt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt1


% --- Executes during object creation, after setting all properties.
function txt1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt2.
function txt2_Callback(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt2


% --- Executes during object creation, after setting all properties.
function txt2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt3.
function txt3_Callback(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt3


% --- Executes during object creation, after setting all properties.
function txt3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt4.
function txt4_Callback(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt4


% --- Executes during object creation, after setting all properties.
function txt4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt5.
function txt5_Callback(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt5


% --- Executes during object creation, after setting all properties.
function txt5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt6.
function txt6_Callback(hObject, eventdata, handles)
% hObject    handle to txt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt6


% --- Executes during object creation, after setting all properties.
function txt6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt7.
function txt7_Callback(hObject, eventdata, handles)
% hObject    handle to txt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt7


% --- Executes during object creation, after setting all properties.
function txt7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt8.
function txt8_Callback(hObject, eventdata, handles)
% hObject    handle to txt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt8


% --- Executes during object creation, after setting all properties.
function txt8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt9.
function txt9_Callback(hObject, eventdata, handles)
% hObject    handle to txt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt9


% --- Executes during object creation, after setting all properties.
function txt9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt10.
function txt10_Callback(hObject, eventdata, handles)
% hObject    handle to txt10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt10


% --- Executes during object creation, after setting all properties.
function txt10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt11.
function txt11_Callback(hObject, eventdata, handles)
% hObject    handle to txt11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt11


% --- Executes during object creation, after setting all properties.
function txt11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt12.
function txt12_Callback(hObject, eventdata, handles)
% hObject    handle to txt12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt12


% --- Executes during object creation, after setting all properties.
function txt12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt13.
function txt13_Callback(hObject, eventdata, handles)
% hObject    handle to txt13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt13


% --- Executes during object creation, after setting all properties.
function txt13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt14.
function txt14_Callback(hObject, eventdata, handles)
% hObject    handle to txt14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt14


% --- Executes during object creation, after setting all properties.
function txt14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in txt15.
function txt15_Callback(hObject, eventdata, handles)
% hObject    handle to txt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns txt15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from txt15


% --- Executes during object creation, after setting all properties.
function txt15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtFun_Callback(hObject, eventdata, handles)
% hObject    handle to txtFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFun as text
%        str2double(get(hObject,'String')) returns contents of txtFun as a double


% --- Executes during object creation, after setting all properties.
function txtFun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in selector.
function selector_Callback(hObject, eventdata, handles)
% hObject    handle to selector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns selector contents as cell array
%        contents{get(hObject,'Value')} returns selected item from selector


% --- Executes during object creation, after setting all properties.
function selector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt3 as text
%        str2double(get(hObject,'String')) returns contents of txt3 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt4 as text
%        str2double(get(hObject,'String')) returns contents of txt4 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt5 as text
%        str2double(get(hObject,'String')) returns contents of txt5 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to txt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt6 as text
%        str2double(get(hObject,'String')) returns contents of txt6 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to txt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt7 as text
%        str2double(get(hObject,'String')) returns contents of txt7 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to txt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt8 as text
%        str2double(get(hObject,'String')) returns contents of txt8 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to txt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt9 as text
%        str2double(get(hObject,'String')) returns contents of txt9 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
