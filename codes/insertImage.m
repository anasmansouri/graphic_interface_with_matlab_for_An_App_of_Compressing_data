function varargout = insertImage(varargin)
% INSERTIMAGE MATLAB code for insertImage.fig
%      INSERTIMAGE, by itself, creates a new INSERTIMAGE or raises the existing
%      singleton*.
%
%      H = INSERTIMAGE returns the handle to a new INSERTIMAGE or the handle to
%      the existing singleton*.
%
%      INSERTIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INSERTIMAGE.M with the given input arguments.
%
%      INSERTIMAGE('Property','Value',...) creates a new INSERTIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before insertImage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to insertImage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help insertImage

% Last Modified by GUIDE v2.5 06-Apr-2020 16:19:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @insertImage_OpeningFcn, ...
                   'gui_OutputFcn',  @insertImage_OutputFcn, ...
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


% --- Executes just before insertImage is made visible.
function insertImage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to insertImage (see VARARGIN)


% Choose default command line output for insertImage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes insertImage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = insertImage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function matrix_Callback(hObject, eventdata, handles)
% hObject    handle to matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of matrix as text
%        str2double(get(hObject,'String')) returns contents of matrix as a double


% --- Executes during object creation, after setting all properties.
function matrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startCoding.
function startCoding_Callback(hObject, eventdata, handles)
% hObject    handle to startCoding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
matrix = get(handles.matrix,'String');
size = get (handles.size,'String');
size = str2num(size);
size = size*size;
disp(matrix);
matrix = str2num(matrix);

l = length(matrix);
disp(l);

if size== l 
    matrix = reshape(matrix,sqrt(size),sqrt(size));
    matrix = transpose(matrix);
    disp(matrix);
    setappdata(0,'matrix',matrix);
    close insertImage;
    showImageAndresult;
else
     %vider edit text
     %set(handles.matrix,'String',"");
     set (handles.size,'String',"");
     msg = '';
     msg = sprintf('\t there is a probleme in the size');
     msgbox(msg,'Output Params');
end






function size_Callback(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size as text
%        str2double(get(hObject,'String')) returns contents of size as a double


% --- Executes during object creation, after setting all properties.
function size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
