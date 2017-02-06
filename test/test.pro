QT       += core gui widgets sql

TARGET = wiipuriTest
TEMPLATE = app

INCLUDEPATH += ../lib/src


SOURCES += main.cpp \
    dialog.cpp \
    ../lib/src/navigationbuttonbox.cpp \
    ../lib/src/yearmonth.cpp \
    ../lib/src/yearmonthwidget.cpp \
    ../lib/src/maindialogcontrolbuttonbox.cpp \
    ../lib/src/mappercontrolbuttonbox.cpp \
    ../lib/src/mapperdialog.cpp

HEADERS  += \
    dialog.h \
    ../lib/src/navigationbuttonbox.h \
    ../lib/src/yearmonth.h \
    ../lib/src/yearmonthwidget.h \
    ../lib/src/maindialogcontrolbuttonbox.h \
    ../lib/src/mappercontrolbuttonbox.h \
    ../lib/src/mapperdialog.h
