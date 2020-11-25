QT += quick

CONFIG += c++1z
QMAKE_CXXFLAGS += /std:c++17

DEFINES += QT_DEPRECATED_WARNINGS

LIBS += "C:/Users/jan-r/projects/FMI4cpp_target/lib_win64vc16_release/fmi4cpp.lib"
INCLUDEPATH += "C:/Users/jan-r/projects/FMI4cpp_target/include"

include($$PWD/QuickQanava/src/quickqanava.pri)

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
