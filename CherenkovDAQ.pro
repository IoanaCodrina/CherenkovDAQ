#-------------------------------------------------
#
# Project created by QtCreator 2016-08-11T14:21:48
#
#-------------------------------------------------

QT       += core gui printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CherenkovDAQ
DESTDIR = bin
targetinstall.path = /usr/local/bin/CherenkovDAQ
targetinstall.files = bin/CherenkovDAQ

INSTALLS += targetinstall

icon.path = /usr/local/CherenkovDAQ
icon.files = data/iconCherenkovDAQ.png
icon.extra = cp data/CherenkovDAQ.desktop ~/Desktop/CherenkovDAQ.desktop

INSTALLS += icon

TEMPLATE = app


SOURCES += src/main.cpp \
    src/mainwindow.cpp \
    src/hv.cpp \
    src/scaler.cpp \
    src/tdc.cpp \
    src/qcustomplot.cpp \
    src/histogram.cpp \
    src/hvmodule.cpp \
    src/tdcmodule.cpp \
    src/scalermodule.cpp \
    src/efficiency.cpp \
    src/graph.cpp \
    src/qdc.cpp \
    src/qdcmodule.cpp \
    src/dialogsetupinterface.cpp

OBJECTS_DIR = build/.obj
MOC_DIR = build/.moc
RCC_DIR = build/.rcc
UI_DIR = build/.ui

INCLUDEPATH += include

HEADERS  += include/mainwindow.h \
    include/hv.h \
    include/scaler.h \
    include/tdc.h \
    include/qcustomplot.h \
    include/histogram.h \
    include/hvmodule.h \
    include/tdcmodule.h \
    include/scalermodule.h \
    include/efficiency.h \
    include/graph.h \
    include/qdc.h \
    include/qdcmodule.h \
    include/dialogsetupinterface.h

FORMS += form/mainwindow.ui \
    form/hv.ui \
    form/scaler.ui \
    form/tdc.ui \
    form/efficiency.ui \
    form/qdc.ui \
    form/dialogsetupinterface.ui

RESOURCES += data/resources.qrc

QMAKE_CXXFLAGS += -std=c++0x -DLINUX

LIBS += -lCAENVME
