Due to a misspelling in GCC [1] (probably) the check for the ARMv6KZ platform
used __ARM_ARCH_6ZK__ instead of __ARM_ARCH_6KZ__.

Append the correct spellings to the checks for __ARM_ARCH_6ZK__.

[1] https://gcc.gnu.org/ml/gcc-patches/2015-06/msg01679.html

--- src/3rdparty/masm/wtf/Platform.h.orig	2017-02-02 09:31:51 UTC
+++ src/3rdparty/masm/wtf/Platform.h
@@ -211,6 +211,7 @@
 #elif defined(__ARM_ARCH_6__) \
     || defined(__ARM_ARCH_6J__) \
     || defined(__ARM_ARCH_6K__) \
+    || defined(__ARM_ARCH_6KZ__) \
     || defined(__ARM_ARCH_6Z__) \
     || defined(__ARM_ARCH_6ZK__) \
     || defined(__ARM_ARCH_6T2__) \
