function varargout = showImageAndresult(varargin)
% SHOWIMAGEANDRESULT MATLAB code for showImageAndresult.fig
%      SHOWIMAGEANDRESULT, by itself, creates a new SHOWIMAGEANDRESULT or raises the existing
%      singleton*.
%
%      H = SHOWIMAGEANDRESULT returns the handle to a new SHOWIMAGEANDRESULT or the handle to
%      the existing singleton*.
%
%      SHOWIMAGEANDRESULT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SHOWIMAGEANDRESULT.M with the given input arguments.
%
%      SHOWIMAGEANDRESULT('Property','Value',...) creates a new SHOWIMAGEANDRESULT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before showImageAndresult_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to showImageAndresult_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help showImageAndresult

% Last Modified by GUIDE v2.5 07-Apr-2020 23:55:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @showImageAndresult_OpeningFcn, ...
                   'gui_OutputFcn',  @showImageAndresult_OutputFcn, ...
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


% --- Executes just before showImageAndresult is made visible.
function showImageAndresult_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to showImageAndresult (see VARARGIN)

matrix = getappdata(0,'matrix');
imshow(matrix);
disp(matrix);

zigZagNbOfZero = ZigZag(matrix);
HorizontalNbOfZero=horizontal(matrix);
VerticalNbOfZero=vertical(matrix);
maximum = max ([zigZagNbOfZero,HorizontalNbOfZero,VerticalNbOfZero]);
if maximum == zigZagNbOfZero
set(handles.resultat,'string',"la lecture en zigzag est la plus performante");
elseif maximum == HorizontalNbOfZero
set(handles.resultat,'string',"la lecture horizontal est la plus performante");
else 
set(handles.resultat,'string',"la lecture vertical est la plus performante");
end


% Choose default command line output for showImageAndresult
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes showImageAndresult wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = showImageAndresult_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
theFirstInterface;
close showImageAndresult;
