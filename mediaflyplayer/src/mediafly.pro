######################################################################
# Automatically generated by qmake (2.01a) p� z�? 26 08:58:00 2008
######################################################################

unix {
 UI_DIR = .ui
 MOC_DIR = .moc
 OBJECTS_DIR = .obj
}

TEMPLATE = app
TARGET = 
CONFIG += debug
DEPENDPATH += .
INCLUDEPATH += . libs/neux/edits libs/neux/delegates libs/neux/views libs/neux/models
QT += xml network
QT += gui
CONFIG += qt silent #debug

RESOURCES += ../resources/mediafly.qrc
FORMS += ../forms/MediaflyPlay.ui

# Input
HEADERS += Mediafly.h MediaflyChannelModel.h MediaflyEpisodeModel.h
SOURCES += Mediafly.cpp MediaflyChannelModel.cpp MediaflyEpisodeModel.cpp

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

SOURCES += MediaflyEpisodeDelegate.cpp
HEADERS += MediaflyEpisodeDelegate.h

SOURCES += MediaflyMenu.cpp
HEADERS += MediaflyMenu.h

SOURCES += MediaflyChannelModelData.cpp
HEADERS += MediaflyChannelModelData.h
HEADERS += MediaflyChannelEntry.h

HEADERS += MediaflyEpisodeEntry.h
HEADERS += MediaflyEpisodeQuery.h
HEADERS += MediaflyEpisodeModelData.h
SOURCES += MediaflyEpisodeModelData.cpp

HEADERS += MediaflyMenuModel.h
SOURCES += MediaflyMenuModel.cpp

HEADERS += MediaflyConsumerBinary.h

SOURCES += main.cpp

HEADERS += MediaflyEpisodeDetails.h
SOURCES += MediaflyEpisodeDetails.cpp

HEADERS += MediaflyPlayer.h
SOURCES += MediaflyPlayer.cpp

HEADERS += MediaflyPlay.h
SOURCES += MediaflyPlay.cpp

FORMS += ../forms/MediaflyPlayVideo.ui
HEADERS += MediaflyPlayVideo.h
SOURCES += MediaflyPlayVideo.cpp

FORMS += ../forms/MediaflyPlayAudio.ui
HEADERS += MediaflyPlayAudio.h
SOURCES += MediaflyPlayAudio.cpp

