--- Modules/FindQt4.cmake.orig	2018-03-09 14:16:46 UTC
+++ Modules/FindQt4.cmake
@@ -718,10 +718,12 @@ if (QT_QMAKE_EXECUTABLE AND
       NAMES accessible bearer codecs designer graphicssystems iconengines imageformats inputmethods qmltooling script sqldrivers
       HINTS ${qt_cross_paths} ${qt_plugins_dir}
       DOC "The location of the Qt plugins"
+      NO_SYSTEM_ENVIRONMENT_PATH
+      NO_CMAKE_SYSTEM_PATH
       NO_CMAKE_FIND_ROOT_PATH)
     # If no plugins were installed, set QT_PLUGINS_DIR to ${qt_plugins_dir}
     if(NOT QT_PLUGINS_DIR AND qt_plugins_dir)
-      set(QT_PLUGINS_DIR ${qt_plugins_dir} CACHE PATH "The location of the Qt plugins")
+      set(QT_PLUGINS_DIR ${qt_plugins_dir})
     endif()
   endif ()
 
@@ -748,7 +750,7 @@ if (QT_QMAKE_EXECUTABLE AND
         NO_CMAKE_SYSTEM_PATH)
       # If the imports folder is empty, set QT_IMPORTS_DIR to ${qt_imports_dir}
       if(NOT QT_IMPORTS_DIR AND qt_imports_dir)
-        set(QT_IMPORTS_DIR ${qt_imports_dir} CACHE PATH "The location of the Qt imports")
+        set(QT_IMPORTS_DIR ${qt_imports_dir})
       endif()
       mark_as_advanced(QT_IMPORTS_DIR)
     endif()
