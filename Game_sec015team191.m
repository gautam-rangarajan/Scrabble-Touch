function varargout = Game_sec015team19(varargin)
% GAME_SEC015TEAM19 MATLAB code for Game_sec015team19.fig
%      GAME_SEC015TEAM19, by itself, creates a new GAME_SEC015TEAM19 or raises the existing
%      singleton*.
%
%      H = GAME_SEC015TEAM19 returns the handle to a new GAME_SEC015TEAM19 or the handle to
%      the existing singleton*.
%
%      GAME_SEC015TEAM19('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME_SEC015TEAM19.M with the given input arguments.
%
%      GAME_SEC015TEAM19('Property','Value',...) creates a new GAME_SEC015TEAM19 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Game_sec015team19_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Game_sec015team19_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Game_sec015team19

% Last Modified by GUIDE v2.5 15-Apr-2015 14:28:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Game_sec015team19_OpeningFcn, ...
                   'gui_OutputFcn',  @Game_sec015team19_OutputFcn, ...
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


% --- Executes just before Game_sec015team19 is made visible.
function Game_sec015team19_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Game_sec015team19 (see VARARGIN)




%Settinng up the axes with the board
handles.boardImage = imread('scrabble-template1.jpg');
handles.boardSize = imshow(handles.boardImage, 'Parent', handles.axes_scrabbleBoard);
set(handles.boardSize,'ButtonDownFcn',@BoardClickCallback);

set(handles.axes_scrabbleBoard,'xlim',[1,1050],'ylim',[1, 1050]);
set(handles.boardSize, 'Xdata', [1,1050], 'Ydata', [1,1050]);

%setting up the axes with the rack
handles.rackImage = imread('rack.jpg');
handles.rackSize = imshow(handles.rackImage, 'Parent', handles.axes_rack);
set(handles.rackSize,'ButtonDownFcn',@RackClickCallback);

set(handles.axes_rack,'xlim',[1,800],'ylim',[1, 150]);
set(handles.rackSize, 'Xdata', [1,800], 'Ydata', [1,150]);


% boardImage = imread('board.png');
titleimg = imread('main_title_grey.jpg');
axes(handles.axes7);
imshow(titleimg);

boardLogo = imread('title.jpg');
axes(handles.axes_logo);
imshow(boardLogo);

closeButton = imread('close2.jpg');
set(handles.pb_close, 'cdata', closeButton);

backButton = imread('back2.jpg');
set(handles.pb_back, 'cdata', backButton);

helpButton = imread('help2.jpg');
set(handles.pb_help, 'cdata', helpButton);


% Choose default command line output for Game_sec015team19
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Game_sec015team19 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Game_sec015team19_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pb_skip.
function pb_skip_Callback(hObject, eventdata, handles)
% hObject    handle to pb_skip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_shuffle.
function pb_shuffle_Callback(hObject, eventdata, handles)
% hObject    handle to pb_shuffle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_submit.
function pb_submit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes_scrabbleBoard_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_scrabbleBoard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: place code in OpeningFcn to populate axes_scrabbleBoard



function edit_typeWord_Callback(hObject, eventdata, handles)
% hObject    handle to edit_typeWord (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_typeWord as text
%        str2double(get(hObject,'String')) returns contents of edit_typeWord as a double


% --- Executes during object creation, after setting all properties.
function edit_typeWord_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_typeWord (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_define.
function pb_define_Callback(hObject, eventdata, handles)
% hObject    handle to pb_define (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web('http://www.merriam-webster.com/')

% --- Executes on selection change in listbox_p1words.
function listbox_p1words_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_p1words (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox_p1words contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_p1words


% --- Executes during object creation, after setting all properties.
function listbox_p1words_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_p1words (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox_p2words.
function listbox_p2words_Callback(hObject, eventdata, handles)
% hObject    handle to listbox_p2words (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox_p2words contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox_p2words


% --- Executes during object creation, after setting all properties.
function listbox_p2words_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox_p2words (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_close.
function pb_close_Callback(hObject, eventdata, handles)
% hObject    handle to pb_close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Game_sec015team19)


% --- Executes on button press in pb_help.
function pb_help_Callback(hObject, eventdata, handles)
% hObject    handle to pb_help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Overview_sec015team19

% --- Executes on button press in pb_back.
function pb_back_Callback(hObject, eventdata, handles)
% hObject    handle to pb_back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Game_sec015team19)
Scrabble_sec015team19


% --- Executes on mouse press over axes background.
function axes_scrabbleBoard_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes_scrabbleBoard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% get coordinates of point clicked by mouse
current_position = get(hObject, 'Currentpoint');

% store x and y coordinates
x_current = current_position(1,1)
y_current = current_position(1,2)

%----Function to get the position of mouse click on axes
function BoardClickCallback ( objectHandle , eventData )
handles.axes_scrabbleBoard  = get(objectHandle,'Parent');
coordinates = get(handles.axes_scrabbleBoard,'CurrentPoint'); 
coordinates = coordinates(1,1:2);

tile = 70;
count = 0;
xPos = 1;
while(tile <= 1050 && count == 0)
    if (coordinates(1) <= tile)
       boardPos(1) = xPos;
       count = count + 1;
    end
    tile = tile + 70;
    xPos = xPos + 1;
end

tile = 70;
count = 0;
yPos = 1;
while(tile <= 1050 && count == 0)
    if (coordinates(2) <= tile)
       boardPos(2) = abs(yPos - 16);
       count = count + 1;
    end
    tile = tile + 70;
    yPos = yPos + 1;
end

if (count > 0)
    disp(boardPos)
end

function RackClickCallback ( objectHandle , eventData )
handles.axes_rack  = get(objectHandle,'Parent');
coordinates = get(handles.axes_rack,'CurrentPoint'); 
coordinates = coordinates(1,1:2);

letterWidth = (710-40)/7;
letterLeft = 40 + letterWidth;
count = 0;
xPos = 1;

while (letterLeft <= 710 && coordinates(2) >= 5 && coordinates(2) <= 100 && coordinates(1) >= 40 && coordinates(1) <= 710 && count == 0)
    if(coordinates(1) <= letterLeft)
        rackPos = xPos;
        count = count + 1;
    end
    letterLeft = letterLeft + letterWidth;
    xPos = xPos + 1;
end

if (count > 0)
    disp(rackPos)
end


% message     = sprintf('x: %.1f , y: %.1f',coordinates (1) ,coordinates (2));
% helpdlg(message);

