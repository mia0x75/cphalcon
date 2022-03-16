
extern zend_class_entry *phalcon_storage_serializer_abstractserializer_ce;

ZEPHIR_INIT_CLASS(Phalcon_Storage_Serializer_AbstractSerializer);

PHP_METHOD(Phalcon_Storage_Serializer_AbstractSerializer, __construct);
PHP_METHOD(Phalcon_Storage_Serializer_AbstractSerializer, getData);
PHP_METHOD(Phalcon_Storage_Serializer_AbstractSerializer, isSuccess);
PHP_METHOD(Phalcon_Storage_Serializer_AbstractSerializer, setData);
PHP_METHOD(Phalcon_Storage_Serializer_AbstractSerializer, isSerializable);

ZEND_BEGIN_ARG_INFO_EX(arginfo_phalcon_storage_serializer_abstractserializer___construct, 0, 0, 0)
	ZEND_ARG_INFO(0, data)
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_INFO_EX(arginfo_phalcon_storage_serializer_abstractserializer_getdata, 0, 0, 0)
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_WITH_RETURN_TYPE_INFO_EX(arginfo_phalcon_storage_serializer_abstractserializer_issuccess, 0, 0, _IS_BOOL, 0)
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_WITH_RETURN_TYPE_INFO_EX(arginfo_phalcon_storage_serializer_abstractserializer_setdata, 0, 1, IS_VOID, 0)

	ZEND_ARG_INFO(0, data)
ZEND_END_ARG_INFO()

ZEND_BEGIN_ARG_WITH_RETURN_TYPE_INFO_EX(arginfo_phalcon_storage_serializer_abstractserializer_isserializable, 0, 1, _IS_BOOL, 0)
	ZEND_ARG_INFO(0, data)
ZEND_END_ARG_INFO()

ZEPHIR_INIT_FUNCS(phalcon_storage_serializer_abstractserializer_method_entry) {
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, __construct, arginfo_phalcon_storage_serializer_abstractserializer___construct, ZEND_ACC_PUBLIC|ZEND_ACC_CTOR)
#if PHP_VERSION_ID >= 80000
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, getData, arginfo_phalcon_storage_serializer_abstractserializer_getdata, ZEND_ACC_PUBLIC)
#else
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, getData, NULL, ZEND_ACC_PUBLIC)
#endif
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, isSuccess, arginfo_phalcon_storage_serializer_abstractserializer_issuccess, ZEND_ACC_PUBLIC)
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, setData, arginfo_phalcon_storage_serializer_abstractserializer_setdata, ZEND_ACC_PUBLIC)
	PHP_ME(Phalcon_Storage_Serializer_AbstractSerializer, isSerializable, arginfo_phalcon_storage_serializer_abstractserializer_isserializable, ZEND_ACC_PROTECTED)
	PHP_FE_END
};
