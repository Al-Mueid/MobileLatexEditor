cmake_minimum_required(VERSION 3.21)

project(MobileLatexEditor VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(MobileLatexEditor
    main.cpp
)

qt_add_qml_module(MobileLatexEditor
    URI MobileLatexEditor
    VERSION 1.0
    QML_FILES
        main.qml
)

target_link_libraries(MobileLatexEditor
    PRIVATE
        Qt6::Quick
)

install(TARGETS MobileLatexEditor
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)





