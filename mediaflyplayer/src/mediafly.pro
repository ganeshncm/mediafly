######################################################################
# Automatically generated by qmake (2.01a) p� z�? 26 08:58:00 2008
######################################################################

TEMPLATE = app
TARGET = 
CONFIG += debug
DEPENDPATH += .
INCLUDEPATH += . libs/neux/edits libs/neux/delegates libs/neux/views libs/neux/models
QT += xml network
QT += gui
CONFIG += qt silent #debug
FORMS += forms/mediafly.ui

# Input
HEADERS += REST.h Mediafly.h MediaflyChannelModel.h MediaflyEpisodeModel.h MediaflyChannelModelThread.h MediaflyEpisodeModelThread.h
SOURCES += REST.cpp Mediafly.cpp MediaflyChannelModel.cpp MediaflyEpisodeModel.cpp MediaflyChannelModelThread.cpp MediaflyEpisodeModelThread.cpp

HEADERS += libs/neux/models/nmenuitemmodel.h libs/neux/models/nmenuitem.h
SOURCES += libs/neux/models/nmenuitemmodel.cpp libs/neux/models/nmenuitem.cpp
HEADERS += libs/neux/edits/nlineedit.h
SOURCES += libs/neux/edits/nlineedit.cpp
HEADERS += libs/neux/delegates/nitemdelegate.h
SOURCES += libs/neux/delegates/nitemdelegate.cpp
HEADERS += libs/neux/views/nhorizontalspinbox.h libs/neux/views/nlistview.h libs/neux/views/nribbonlistview.h libs/neux/views/nspinboxmenulistview.h
SOURCES += libs/neux/views/nhorizontalspinbox.cpp libs/neux/views/nlistview.cpp libs/neux/views/nribbonlistview.cpp libs/neux/views/nspinboxmenulistview.cpp

SOURCES += MediaflyList.cpp
HEADERS += MediaflyList.h

SOURCES += main.cpp MediaflyMenu.cpp
HEADERS += MListView.h MediaflyMenu.h


