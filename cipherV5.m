function varargout = cipherV5(varargin)
%CIPHERV5 MATLAB code file for cipherV5.fig
%      CIPHERV5, by itself, creates aman new CIPHERV5 or raises the existing
%      singleton*.
%
%      hMan = CIPHERV5 returns the handle to aman new CIPHERV5 or the handle to
%      the existing singleton*.
%
%      CIPHERV5('Property','Value',...) creates aman new CIPHERV5 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to cipherV5_OpeningFcn.  This calling syntax produces aman
%      warning when there is an existing singleton*.
%
%      CIPHERV5('CALLBACK') and CIPHERV5('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CIPHERV5.mMan with the given input
%      arguments.
%
%      *See GUI Options on GUIDE'sman Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cipherV5

% Last Modified by GUIDE v2.5 27-Apr-2017 02:28:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cipherV5_OpeningFcn, ...
                   'gui_OutputFcn',  @cipherV5_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before cipherV5 is made visible.
function cipherV5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for cipherV5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%UIWAIT %makes cipherV5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.imageAxes)
matlabImage = imread('SwapArrowNeg.jpg');
imshow(matlabImage)
axis off
axis image

% --- Outputs from this function are returned to the command line.
function varargout = cipherV5_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function InPut_Callback(hObject, eventdata, handles)
% hObject    handle to InPut (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of InPut as text
%        str2double(get(hObject,'String')) returns contents of InPut as aman double
% for iman = 1:handles.InPut.Max
%     if length(handles.InPut.String(iman)) > 0
%         
%     elseif strcmp(handles.InPut.String(iman),'')
handles.InPut.String = lower(handles.InPut.String);
        

% --- Executes during object creation, after setting all properties.
function InPut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InPut (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OutPut_Callback(hObject, eventdata, handles)
% hObject    handle to OutPut (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OutPut as text
%        str2double(get(hObject,'String')) returns contents of OutPut as aman double


% --- Executes during object creation, after setting all properties.
function OutPut_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OutPut (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function InPutSlider_Callback(hObject, eventdata, handles)
% hObject    handle to InPutSlider (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function InPutSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to InPutSlider (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have aman light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function OutPutSlider_Callback(hObject, eventdata, handles)
% hObject    handle to OutPutSlider (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function OutPutSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OutPutSlider (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have aman light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function aMan_Callback(hObject, eventdata, handles)
% hObject    handle to aMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aMan as text
%        str2double(get(hObject,'String')) returns contents of aMan as aman double


% --- Executes during object creation, after setting all properties.
function aMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bMan_Callback(hObject, eventdata, handles)
% hObject    handle to bMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bMan as text
%        str2double(get(hObject,'String')) returns contents of bMan as aman double


% --- Executes during object creation, after setting all properties.
function bMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cMan_Callback(hObject, eventdata, handles)
% hObject    handle to cMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cMan as text
%        str2double(get(hObject,'String')) returns contents of cMan as aman double


% --- Executes during object creation, after setting all properties.
function cMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dMan_Callback(hObject, eventdata, handles)
% hObject    handle to dMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dMan as text
%        str2double(get(hObject,'String')) returns contents of dMan as aman double


% --- Executes during object creation, after setting all properties.
function dMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eMan_Callback(hObject, eventdata, handles)
% hObject    handle to eMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eMan as text
%        str2double(get(hObject,'String')) returns contents of eMan as aman double


% --- Executes during object creation, after setting all properties.
function eMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fMan_Callback(hObject, eventdata, handles)
% hObject    handle to fMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fMan as text
%        str2double(get(hObject,'String')) returns contents of fMan as aman double


% --- Executes during object creation, after setting all properties.
function fMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gMan_Callback(hObject, eventdata, handles)
% hObject    handle to gMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gMan as text
%        str2double(get(hObject,'String')) returns contents of gMan as aman double


% --- Executes during object creation, after setting all properties.
function gMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hMan_Callback(hObject, eventdata, handles)
% hObject    handle to hMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hMan as text
%        str2double(get(hObject,'String')) returns contents of hMan as aman double


% --- Executes during object creation, after setting all properties.
function hMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iMan_Callback(hObject, eventdata, handles)
% hObject    handle to iMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iMan as text
%        str2double(get(hObject,'String')) returns contents of iMan as aman double


% --- Executes during object creation, after setting all properties.
function iMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jMan_Callback(hObject, eventdata, handles)
% hObject    handle to jMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jMan as text
%        str2double(get(hObject,'String')) returns contents of jMan as aman double


% --- Executes during object creation, after setting all properties.
function jMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kMan_Callback(hObject, eventdata, handles)
% hObject    handle to kMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kMan as text
%        str2double(get(hObject,'String')) returns contents of kMan as aman double


% --- Executes during object creation, after setting all properties.
function kMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lMan_Callback(hObject, eventdata, handles)
% hObject    handle to lMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lMan as text
%        str2double(get(hObject,'String')) returns contents of lMan as aman double


% --- Executes during object creation, after setting all properties.
function lMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mMan_Callback(hObject, eventdata, handles)
% hObject    handle to mMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mMan as text
%        str2double(get(hObject,'String')) returns contents of mMan as aman double


% --- Executes during object creation, after setting all properties.
function mMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nMan_Callback(hObject, eventdata, handles)
% hObject    handle to nMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nMan as text
%        str2double(get(hObject,'String')) returns contents of nMan as aman double


% --- Executes during object creation, after setting all properties.
function nMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function oMan_Callback(hObject, eventdata, handles)
% hObject    handle to oMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of oMan as text
%        str2double(get(hObject,'String')) returns contents of oMan as aman double


% --- Executes during object creation, after setting all properties.
function oMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to oMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pMan_Callback(hObject, eventdata, handles)
% hObject    handle to pMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pMan as text
%        str2double(get(hObject,'String')) returns contents of pMan as aman double


% --- Executes during object creation, after setting all properties.
function pMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function qMan_Callback(hObject, eventdata, handles)
% hObject    handle to qMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of qMan as text
%        str2double(get(hObject,'String')) returns contents of qMan as aman double


% --- Executes during object creation, after setting all properties.
function qMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rMan_Callback(hObject, eventdata, handles)
% hObject    handle to rMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rMan as text
%        str2double(get(hObject,'String')) returns contents of rMan as aman double


% --- Executes during object creation, after setting all properties.
function rMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sMan_Callback(hObject, eventdata, handles)
% hObject    handle to sMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sMan as text
%        str2double(get(hObject,'String')) returns contents of sMan as aman double


% --- Executes during object creation, after setting all properties.
function sMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tMan_Callback(hObject, eventdata, handles)
% hObject    handle to tMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tMan as text
%        str2double(get(hObject,'String')) returns contents of tMan as aman double


% --- Executes during object creation, after setting all properties.
function tMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uMan_Callback(hObject, eventdata, handles)
% hObject    handle to uMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uMan as text
%        str2double(get(hObject,'String')) returns contents of uMan as aman double


% --- Executes during object creation, after setting all properties.
function uMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vMan_Callback(hObject, eventdata, handles)
% hObject    handle to vMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vMan as text
%        str2double(get(hObject,'String')) returns contents of vMan as aman double


% --- Executes during object creation, after setting all properties.
function vMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wMan_Callback(hObject, eventdata, handles)
% hObject    handle to wMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wMan as text
%        str2double(get(hObject,'String')) returns contents of wMan as aman double


% --- Executes during object creation, after setting all properties.
function wMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xMan_Callback(hObject, eventdata, handles)
% hObject    handle to xMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xMan as text
%        str2double(get(hObject,'String')) returns contents of xMan as aman double


% --- Executes during object creation, after setting all properties.
function xMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yMan_Callback(hObject, eventdata, handles)
% hObject    handle to yMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yMan as text
%        str2double(get(hObject,'String')) returns contents of yMan as aman double


% --- Executes during object creation, after setting all properties.
function yMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zMan_Callback(hObject, eventdata, handles)
% hObject    handle to zMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zMan as text
%        str2double(get(hObject,'String')) returns contents of zMan as aman double


% --- Executes during object creation, after setting all properties.
function zMan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zMan (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Decryptbutton.
function Decryptbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Decryptbutton (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if ~isempty(handles.InPut.String)
    if handles.PopupMenu.Value == 1
        encoderF(handles);
    elseif handles.PopupMenu.Value == 2
        DecoderTestF(handles);
    elseif handles.PopupMenu.Value == 3
        letterFrequencyDecryptionF(handles);
    end
    handles.plotAxes.XColor = 'white';
end


% --- Executes on button press in ReDecryptbutton.
function ReDecryptbutton_Callback(hObject, eventdata, handles)
% hObject    handle to ReDecryptbutton (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%
%userHelpF(handles,handles.OutPut.String)
if ~isempty(handles.this.String) && ~isempty(handles.that.String)
    swapVars(handles);
end

% --- Executes on selection change in PopupMenu.
function PopupMenu_Callback(hObject, eventdata, handles)
% hObject    handle to PopupMenu (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PopupMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PopupMenu


% --- Executes during object creation, after setting all properties.
function PopupMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PopupMenu (see GCBO)
% eventdata  reserved - to be defined in aman future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have aman white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function this_Callback(hObject, eventdata, handles)
% hObject    handle to this (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of this as text
%        str2double(get(hObject,'String')) returns contents of this as a double
if ~isempty(handles.this.String)
    handles.this.String = upper(handles.this.String(1));
end

% --- Executes during object creation, after setting all properties.
function this_CreateFcn(hObject, eventdata, handles)
% hObject    handle to this (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function that_Callback(hObject, eventdata, handles)
% hObject    handle to that (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of that as text
%        str2double(get(hObject,'String')) returns contents of that as a double
if ~isempty(handles.that.String)
    handles.that.String = upper(handles.that.String(1));
end

% --- Executes during object creation, after setting all properties.
function that_CreateFcn(hObject, eventdata, handles)
% hObject    handle to that (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in copyPaste.
function copyPaste_Callback(hObject, eventdata, handles)
% hObject    handle to copyPaste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.InPut.String = handles.OutPut.String;


% --- Executes on button press in clearInput.
function clearInput_Callback(hObject, eventdata, handles)
% hObject    handle to clearInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.InPut.String = '';

% --- Executes on button press in clearOutput.
function clearOutput_Callback(hObject, eventdata, handles)
% hObject    handle to clearOutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.OutPut.String = '';