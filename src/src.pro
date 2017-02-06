QT -= gui
QT += widgets sql
CONFIG += install
TARGET = vyborg
TEMPLATE = lib
VERSION = 1.12
DEFINES += LIBVYBORG_LIBRARY

OBJECTS_DIR = tmp
MOC_DIR = tmp

include(files.pri)

linux:DIR_PREFIX = /usr/local/
macx:DIR_PREFIX=/usr/local/

HEADERS_INSTALL_DIR = $$DIR_PREFIX/include/$$TARGET
LIBS_INSTALL_DIR = $$DIR_PREFIX/lib/$$TARGET

unix {
    headers.extra = mkdir -p $$HEADERS_INSTALL_DIR
    headers.files = $$HEADERS
    headers.path = $$HEADERS_INSTALL_DIR
    INSTALLS += headers

    features.extra = @echo Installing $${TARGET}.prf ...
    features.files = $${TARGET}.prf
    features.path = $$QMAKESPEC
    INSTALLS += features

#    endup.extra = make install
##    endup.path = $$PWD
#    INSTALLS += endup
}9

DESTDIR = $$LIBS_INSTALL_DIR

RESOURCES += \
    resource.qrc

OTHER_FILES += \
    vyborg.prf
