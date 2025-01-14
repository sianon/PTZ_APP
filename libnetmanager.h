#line 1 "cgo-builtin-export-prolog"

#include <stddef.h>

#ifndef GO_CGO_EXPORT_PROLOGUE_H
#define GO_CGO_EXPORT_PROLOGUE_H

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef struct { const char *p; ptrdiff_t n; } _GoString_;
#endif

#endif


#line 3 "netmanager.go"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct _goString{
	char*	utf8Data;
	int	datalen;
}goString,*pgoString;

typedef int _stdcall (*notifyCallBack)(pgoString string);

static void callNotify(void* notifyFunc,pgoString string){
	((notifyCallBack)notifyFunc)(string);
}

static void init(){
}

#line 1 "cgo-generated-wrapper"

#line 1 "cgo-gcc-export-header-prolog"

#ifndef GO_CGO_PROLOGUE_H
#define GO_CGO_PROLOGUE_H

typedef signed char GoInt8;
typedef unsigned char GoUint8;
typedef short GoInt16;
typedef unsigned short GoUint16;
typedef int GoInt32;
typedef unsigned int GoUint32;
typedef long long GoInt64;
typedef unsigned long long GoUint64;
typedef GoInt64 GoInt;
typedef GoUint64 GoUint;
typedef size_t GoUintptr;
typedef float GoFloat32;
typedef double GoFloat64;
#ifdef _MSC_VER
#include <complex.h>
typedef _Fcomplex GoComplex64;
typedef _Dcomplex GoComplex128;
#else
typedef float _Complex GoComplex64;
typedef double _Complex GoComplex128;
#endif

typedef char _check_for_64_bit_pointer_matching_GoInt[sizeof(void*)==64/8 ? 1:-1];

#ifndef GO_CGO_GOSTRING_TYPEDEF
typedef _GoString_ GoString;
#endif
typedef void *GoMap;
typedef void *GoChan;
typedef struct { void *t; void *v; } GoInterface;
typedef struct { void *data; GoInt len; GoInt cap; } GoSlice;

#endif

#ifdef __cplusplus
extern "C" {
#endif

extern __declspec(dllexport) void registerCallBack(GoUintptr callBackFunc);
extern __declspec(dllexport) char* GetGoString();
extern __declspec(dllexport) void mqttSendProto(char* topic_s, char* json_data_s);
extern __declspec(dllexport) GoUint8 mqttInit(char* ids, char* topics, char* brokers);

#ifdef __cplusplus
}
#endif
