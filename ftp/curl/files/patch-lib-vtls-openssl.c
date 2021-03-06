--- lib/vtls/openssl.c.orig	2018-03-22 14:26:38 UTC
+++ lib/vtls/openssl.c
@@ -117,12 +117,7 @@
 #define X509_get0_notBefore(x) X509_get_notBefore(x)
 #define X509_get0_notAfter(x) X509_get_notAfter(x)
 #define CONST_EXTS /* nope */
-#ifdef LIBRESSL_VERSION_NUMBER
-static unsigned long OpenSSL_version_num(void)
-{
-  return LIBRESSL_VERSION_NUMBER;
-}
-#else
+#ifndef LIBRESSL_VERSION_NUMBER
 #define OpenSSL_version_num() SSLeay()
 #endif
 #endif
@@ -3526,7 +3521,11 @@ static size_t Curl_ossl_version(char *bu
   unsigned long ssleay_value;
   sub[2]='\0';
   sub[1]='\0';
+#ifdef LIBRESSL_VERSION_NUMBER
+  ssleay_value = LIBRESSL_VERSION_NUMBER;
+#else
   ssleay_value = OpenSSL_version_num();
+#endif
   if(ssleay_value < 0x906000) {
     ssleay_value = SSLEAY_VERSION_NUMBER;
     sub[0]='\0';
