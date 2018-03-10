--- Modules/FindQt4.cmake.orig	2018-03-10 20:08:45 UTC
+++ Modules/FindQt4.cmake
@@ -721,7 +721,7 @@
       NO_CMAKE_FIND_ROOT_PATH)
     # If no plugins were installed, set QT_PLUGINS_DIR to ${qt_plugins_dir}
     if(NOT QT_PLUGINS_DIR AND qt_plugins_dir)
-      set(QT_PLUGINS_DIR ${qt_plugins_dir} CACHE PATH "The location of the Qt plugins")
+      set(QT_PLUGINS_DIR ${qt_plugins_dir})
     endif()
   endif ()
 
@@ -740,7 +740,7 @@
       foreach(qt_cross_path ${CMAKE_FIND_ROOT_PATH})
         set(qt_cross_paths ${qt_cross_paths} "${qt_cross_path}/imports")
       endforeach()
-      find_path(QT_IMPORTS_DIR NAMES Qt
+      find_path(_fp_QT_IMPORTS_DIR NAMES Qt
         HINTS ${qt_cross_paths} ${qt_imports_dir}
         DOC "The location of the Qt imports"
         NO_CMAKE_FIND_ROOT_PATH
@@ -748,7 +748,7 @@
         NO_CMAKE_SYSTEM_PATH)
       # If the imports folder is empty, set QT_IMPORTS_DIR to ${qt_imports_dir}
       if(NOT QT_IMPORTS_DIR AND qt_imports_dir)
-        set(QT_IMPORTS_DIR ${qt_imports_dir} CACHE PATH "The location of the Qt imports")
+        set(QT_IMPORTS_DIR ${qt_imports_dir})
       endif()
       mark_as_advanced(QT_IMPORTS_DIR)
     endif()
