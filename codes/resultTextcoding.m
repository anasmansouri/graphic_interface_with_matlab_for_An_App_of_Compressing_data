function varargout = resultTextcoding(varargin)
% RESULTTEXTCODING MATLAB code for resultTextcoding.fig
%      RESULTTEXTCODING, by itself, creates a new RESULTTEXTCODING or raises the existing
%      singleton*.
%
%      H = RESULTTEXTCODING returns the handle to a new RESULTTEXTCODING or the handle to
%      the existing singleton*.
%
%      RESULTTEXTCODING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTTEXTCODING.M with the given input arguments.
%
%      RESULTTEXTCODING('Property','Value',...) creates a new RESULTTEXTCODING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before resultTextcoding_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to resultTextcoding_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help resultTextcoding

% Last Modified by GUIDE v2.5 07-Apr-2020 23:54:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @resultTextcoding_OpeningFcn, ...
                   'gui_OutputFcn',  @resultTextcoding_OutputFcn, ...
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


% --- Executes just before resultTextcoding is made visible.
function resultTextcoding_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to resultTextcoding (see VARARGIN)

% code 
msg = getappdata(0,'text');
[c1,c2,result]=myapp_huffman_shannon(msg);
set(handles.shannon,'string',c1);
set(handles.huffman,'string',c2);

%taux de compression shannon
taux_CS_SHANNON = length(c1)/(length(msg)*8);
set(handles.tauxShan,'string',num2str(taux_CS_SHANNON));

%taux de compression shannon
taux_CS_Huffman = length(c2)/(length(msg)*8);
set(handles.tauxHuf,'string',num2str(taux_CS_Huffman));


%msg%%%
if taux_CS_Huffman > taux_CS_SHANNON
    msgbox("HUffman est plus optimal que shannon","","help");
elseif taux_CS_Huffman < taux_CS_SHANNON
    msgbox("Shannon est plus optimal que Huffman","","help");
else
    msgbox("les deux algorithmes sont equivalents","","help");
end
    



% Choose default command line output for resultTextcoding
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes resultTextcoding wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = resultTextcoding_OutputFcn(hObject, eventdata, handles) 
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
theFirstInterface;
close resultTextcoding;
