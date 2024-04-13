function varargout = calculadora_menu(varargin)
% CALCULADORA_MENU MATLAB code for calculadora_menu.fig
%      CALCULADORA_MENU, by itself, creates a new CALCULADORA_MENU or raises the existing
%      singleton*.
%
%      H = CALCULADORA_MENU returns the handle to a new CALCULADORA_MENU or the handle to
%      the existing singleton*.
%
%      CALCULADORA_MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA_MENU.M with the given input arguments.
%
%      CALCULADORA_MENU('Property','Value',...) creates a new CALCULADORA_MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculadora_menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculadora_menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculadora_menu

% Last Modified by GUIDE v2.5 10-Apr-2024 12:24:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculadora_menu_OpeningFcn, ...
                   'gui_OutputFcn',  @calculadora_menu_OutputFcn, ...
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


% --- Executes just before calculadora_menu is made visible.
function calculadora_menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculadora_menu (see VARARGIN)

% Choose default command line output for calculadora_menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculadora_menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculadora_menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function derivadax_Callback(hObject, eventdata, handles)
% hObject    handle to derivadax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function der_indefinidas_Callback(hObject, eventdata, handles)
% hObject    handle to der_indefinidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
derivadaIndefinida

% --------------------------------------------------------------------
function der_definidas_Callback(hObject, eventdata, handles)
% hObject    handle to der_definidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
derivadaDefinida

% --------------------------------------------------------------------
function der_parciales_Callback(hObject, eventdata, handles)
% hObject    handle to der_parciales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%derivadaParcial
derivadasParciales

% --------------------------------------------------------------------
function integralex_Callback(hObject, eventdata, handles)
% hObject    handle to integralex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function int_indefinidas_Callback(hObject, eventdata, handles)
% hObject    handle to int_indefinidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
integralIndefinida

% --------------------------------------------------------------------
function int_definidas_Callback(hObject, eventdata, handles)
% hObject    handle to int_definidas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
integralDefinida

% --------------------------------------------------------------------
function transformadax_Callback(hObject, eventdata, handles)
% hObject    handle to transformadax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function tra_directas_Callback(hObject, eventdata, handles)
% hObject    handle to tra_directas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
transformadaDirecta

% --------------------------------------------------------------------
function tra_inversas_Callback(hObject, eventdata, handles)
% hObject    handle to tra_inversas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
transformadaInversa

% --------------------------------------------------------------------
function Ecuacionex_Callback(hObject, eventdata, handles)
% hObject    handle to Ecuacionex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function ecu_diferenciales_Callback(hObject, eventdata, handles)
% hObject    handle to ecu_diferenciales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ecuacion_Diferencial


% --------------------------------------------------------------------
function ECD_enfriamiento_calentamiento_Callback(hObject, eventdata, handles)
% hObject    handle to ECD_enfriamiento_calentamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frm_ed_calentamiento_enfriamiento
