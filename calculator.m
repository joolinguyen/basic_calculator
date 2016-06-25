function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 25-Jun-2016 18:32:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
add = handles.edit1 + handles.edit2;
set(handles.result,'String',add);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = 0;
    set(hObject,'String',num);
    errorlg('Input must be a number','Error');
end
handles.edit1 = num;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
num = str2double(get(hObject,'String'));
if isnan(num)
    num = o;
    set(hObject,'String',num);
    errorlg('Input must be a number','Error');
end
handles.edit2 = num;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
subtract = handles.edit1 - handles.edit2;
set(handles.result,'String',subtract);

% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
divide = handles.edit1/handles.edit2;
set(handles.result,'String',divide);

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
multiply = handles.edit1 * handles.edit2;
set (handles.result,'String',multiply);
