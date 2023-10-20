# Fluides

A Flutter desktop proof of concept.

This project has a long way to go, and probably will stay like this for a long long time...

## Objective

I like the idea of an unified interface, something that would look good on a smartphone or a desktop, but I know my limitations and that I could not get even a little closer to something like KDE or Gnome, so I would be happy if I could just make a fake desktop to run in something like a sbc (Raspberry Pi or the others 'Fruit Pi').

Even so it's not a complete throw away project, if it works correctly I pretend to use it as the base application in where I do work, it would offer a visual identity for the application with an easy to customise interface (see: [Application Builder](#application-builder)).

# TO-DO

### Structure
- [ ] Convert Start Menu to application;
- [ ] Convert Notification panel to application;
- [ ] Convert Docker to application;
- [ ] Role based access control;
- [ ] Json application format;
- [ ] Translations:
    - [ ] Migrate strings to a translation file;
    - [ ] Allow to use a translation file per application.

### Desktop
- [ ] Wallpaper:
    - [ ] Enable to change wallpaper;
    - [ ] Select wallpaper behavior (stretch, fill with colour or replicate).
- Applications Shortcuts:
    - [ ] Create a grid for shortcuts;
    - [ ] Enable shortcut custom placement on the grid;
    - [ ] Create a way for shorcut to be placed;
    - [ ] Enable shortcut customization for desktop (?).
- [ ] Left Button / Press and hold (?) should open a new menu for some quick options:
    - [ ] Applications (Zip, Open With, Edit, Send, Show Folder, Terminal, etc);
    - [ ] Properties.
- [ ] Implement multi-desktop.

### Window Manager
- [ ] Window animation; (started)
- [ ] Improve Top bar / Menu; (started)
- [x] Make selected window always on top (ApplicationProcess); (2023-10-20)
- [ ] Hide top bar on small screen or when selected by the user/application; (started)
- [ ] Add option to window resize;
- [ ] Enable full screen;
- [ ] Enable window position realocation on screen;
- [ ] More than one window per application;
- [ ] Custom Hotkeys.

### Docker
- [ ] Improve running application shortcut area;
- [ ] Realocate notification to top screen on small size display.

### Start Menu
- [ ] Correct pixel overflow;
- [ ] Create expanded screen that display all applications;
- [ ] Makes search application works:
    - [ ] Add option to search for file/directory.

### Notification Panel
- [ ] Improve panel;
- [ ] Create notification modal;
- [ ] Enable external access to notification (user consent).

### File Manager
- [ ] Directory navigation;
- [ ] Search file/directory;
- [ ] External access for file/directory selection.

### Calendar
- [ ] Date visualization;
- [ ] Event scheduling;
- [ ] Event notification;
- [ ] External access for date selection;
- [ ] External access to event scheduling.

### Text Editor
- [ ] Simple application for text edition (txt).

### Task Manager
- [ ] Show running process;
- [ ] Resources utilization;
- [ ] Kill application.

### System Settings
- [ ] Theme settings:
    - [ ] Font;
    - [ ] Language;
    - [ ] Style.
- [ ] Date & Time Settings;
- [ ] Default Apps Settings;
- [ ] User/Multi-user Settings;
- [ ] Multiseat Settings;
- [ ] Screen Settings;
- [ ] Audio Settings;
- [ ] Input Settings:
    - [ ] Mouse;
    - [ ] Keyboard;
- [ ] Hotkey settings;
- [ ] Power Management;
- [ ] Environment variables;
- [ ] System Information.

### Terminal
- [ ] Console for system commands.

### Application Builder
- [ ] Dynamic grid;
- [ ] Text Field;
- [ ] Input Field;
- [ ] List;
- [ ] Images;
- [ ] Tools:
    - [ ] Animations;
    - [ ] PDF export;
    - [ ] Send E-mail;
    - [ ] Open file;
    - [ ] Data structure (export to CSV);
    - [ ] Database connection.
- [ ] Json export;
- [ ] Json import;
- [ ] Json to Dart (Flutter APP).

### Lock Screen
- [ ] Login window.
