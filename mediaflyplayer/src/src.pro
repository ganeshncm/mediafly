######################################################################
# Automatically generated by qmake (2.01a) p� z�? 26 08:58:00 2008
######################################################################

MOC_DIR = ./build
UI_DIR = ./build
OBJECTS_DIR = ./build
INCLUDEPATH += ./build

INCLUDEPATH += . ../neux/edits ../neux/delegates ../neux/views ../neux/models

TEMPLATE = app
TARGET = mediafly
CONFIG += debug
DEPENDPATH += .

# Include special application config
include (../config.pri)

RESOURCES += ../resources/mediafly.qrc

FORMS += ../forms/MediaflyPlay.ui

# Input
HEADERS += Mediafly.h MediaflyChannelModel.h MediaflyEpisodeModel.h
SOURCES += Mediafly.cpp MediaflyChannelModel.cpp MediaflyEpisodeModel.cpp

SOURCES += MediaflyList.cpp
HEADERS += MediaflyList.h

SOURCES += MediaflyEpisodeDelegate.cpp
HEADERS += MediaflyEpisodeDelegate.h

FORMS += ../forms/MediaflyMenu.ui
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

FORMS += ../forms/MediaflyEpisodeDetails.ui
HEADERS += MediaflyEpisodeDetails.h
SOURCES += MediaflyEpisodeDetails.cpp

HEADERS += Player.h
SOURCES += Player.cpp

HEADERS += Play.h
SOURCES += Play.cpp

FORMS += ../forms/MediaflyPlayVideo.ui
HEADERS += PlayVideo.h
SOURCES += PlayVideo.cpp

FORMS += ../forms/MediaflyPlayAudio.ui
HEADERS += PlayAudio.h
SOURCES += PlayAudio.cpp

HEADERS += MediaflyAuthentication_SetMFUserAsDefaultData.h

HEADERS += MediaflyAuthentication_GetBoundMFUsersData.h
SOURCES += MediaflyAuthentication_GetBoundMFUsersData.cpp

HEADERS += User.h

HEADERS += UsersModel.h
SOURCES += UsersModel.cpp

FORMS += ../forms/MediaflyLoginPerson.ui

FORMS += ../forms/MediaflyPersonalize.ui
HEADERS += Personalize.h
SOURCES += Personalize.cpp

HEADERS += LoginPerson.h
SOURCES += LoginPerson.cpp

HEADERS += MediaflyAuthentication_BindMFUserData.h
SOURCES += MediaflyAuthentication_BindMFUserData.cpp

HEADERS += MediaflyMenuDelegate.h
SOURCES += MediaflyMenuDelegate.cpp

HEADERS += MediaflyCheckResponseOk.h
SOURCES += MediaflyCheckResponseOk.cpp

FORMS += ../forms/MediaflyPlayqueue.ui
HEADERS += Playqueue.h
SOURCES += Playqueue.cpp

