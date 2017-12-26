function varargout = Citations_sec015team19(varargin)
% CITATIONS_SEC015TEAM19 MATLAB code for Citations_sec015team19.fig
%      CITATIONS_SEC015TEAM19, by itself, creates a new CITATIONS_SEC015TEAM19 or raises the existing
%      singleton*.
%
%      H = CITATIONS_SEC015TEAM19 returns the handle to a new CITATIONS_SEC015TEAM19 or the handle to
%      the existing singleton*.
%
%      CITATIONS_SEC015TEAM19('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CITATIONS_SEC015TEAM19.M with the given input arguments.
%
%      CITATIONS_SEC015TEAM19('Property','Value',...) creates a new CITATIONS_SEC015TEAM19 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Citations_sec015team19_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Citations_sec015team19_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Citations_sec015team19

% Last Modified by GUIDE v2.5 09-Apr-2015 05:12:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Citations_sec015team19_OpeningFcn, ...
                   'gui_OutputFcn',  @Citations_sec015team19_OutputFcn, ...
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


% --- Executes just before Citations_sec015team19 is made visible.
function Citations_sec015team19_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Citations_sec015team19 (see VARARGIN)

% Choose default command line output for Citations_sec015team19
handles.output = hObject;

citTitle = imread('citations.jpg');
axes(handles.axes_title);
imshow(citTitle);

closeButton = imread('close2.jpg');
set(handles.pb_close, 'cdata', closeButton);

backButton = imread('back2.jpg');
set(handles.pb_back, 'cdata', backButton);

boardLogo = imread('title.jpg');
axes(handles.axes_logo);
imshow(boardLogo);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Citations_sec015team19 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Citations_sec015team19_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_close.
function pb_close_Callback(hObject, eventdata, handles)
% hObject    handle to pb_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Citations_sec015team19)

% --- Executes on button press in pb_back.
function pb_back_Callback(hObject, eventdata, handles)
% hObject    handle to pb_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Citations_sec015team19)
Scrabble_sec015team19
