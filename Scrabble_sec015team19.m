function varargout = Scrabble_sec015team19(varargin)
% Scrabble_sec015team19 MATLAB code for Scrabble_sec015team19.fig
%      Scrabble_sec015team19, by itself, creates a new Scrabble_sec015team19 or raises the existing
%      singleton*.
%
%      H = Scrabble_sec015team19 returns the handle to a new Scrabble_sec015team19 or the handle to
%      the existing singleton*.
%
%      Scrabble_sec015team19('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Scrabble_sec015team19.M with the given input arguments.
%
%      Scrabble_sec015team19('Property','Value',...) creates a new Scrabble_sec015team19 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the Scrabble_sec015team19 before Scrabble_sec015team19_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Scrabble_sec015team19_OpeningFcn via varargin.
%
%      *See Scrabble_sec015team19 Options on GUIDE's Tools menu.  Choose "Scrabble_sec015team19 allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Scrabble_sec015team19

% Last Modified by GUIDE v2.5 09-Apr-2015 05:25:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Scrabble_sec015team19_OpeningFcn, ...
                   'gui_OutputFcn',  @Scrabble_sec015team19_OutputFcn, ...
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


% --- Executes just before Scrabble_sec015team19 is made visible.
function Scrabble_sec015team19_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Scrabble_sec015team19 (see VARARGIN)

% Choose default command line output for Scrabble_sec015team19
handles.output = hObject;

titleimg = imread('main_title.jpg');
axes(handles.axes_title);
imshow(titleimg);

logo = imread('logo_white.jpg');
axes(handles.axes_logo);
imshow(logo);

closeButton = imread('close2.jpg');
set(handles.pb_close, 'cdata', closeButton);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Scrabble_sec015team19 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Scrabble_sec015team19_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_citation.
function pb_citation_Callback(hObject, eventdata, handles)
% hObject    handle to pb_citation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Scrabble_sec015team19)
Citations_sec015team19


% --- Executes on button press in pb_overview.
function pb_overview_Callback(hObject, eventdata, handles)
% hObject    handle to pb_overview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Scrabble_sec015team19)
Overview_sec015team19


% --- Executes on button press in pb_start.
function pb_start_Callback(hObject, eventdata, handles)
% hObject    handle to pb_start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Scrabble_sec015team19)
Game_sec015team19


% --- Executes on button press in pb_close.
function pb_close_Callback(hObject, eventdata, handles)
% hObject    handle to pb_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Scrabble_sec015team19)
