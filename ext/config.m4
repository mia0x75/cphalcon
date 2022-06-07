PHP_ARG_ENABLE(phalcon, whether to enable phalcon, [ --enable-phalcon   Enable Phalcon])

if test "$PHP_PHALCON" = "yes"; then

	

	if ! test "x" = "x"; then
		PHP_EVAL_LIBLINE(, PHALCON_SHARED_LIBADD)
	fi

	AC_DEFINE(HAVE_PHALCON, 1, [Whether you have Phalcon])
	phalcon_sources="phalcon.c kernel/main.c kernel/memory.c kernel/exception.c kernel/debug.c kernel/backtrace.c kernel/object.c kernel/array.c kernel/string.c kernel/fcall.c kernel/require.c kernel/file.c kernel/operators.c kernel/math.c kernel/concat.c kernel/variables.c kernel/filter.c kernel/iterator.c kernel/time.c kernel/exit.c phalcon/di/injectionawareinterface.zep.c
	phalcon/html/helper/abstracthelper.zep.c
	phalcon/filter/validation/validatorinterface.zep.c
	phalcon/filter/validation/abstractvalidator.zep.c
	phalcon/html/helper/input/abstractinput.zep.c
	phalcon/events/eventsawareinterface.zep.c
	phalcon/factory/abstractconfigfactory.zep.c
	phalcon/support/collection/collectioninterface.zep.c
	phalcon/di/abstractinjectionaware.zep.c
	phalcon/storage/adapter/adapterinterface.zep.c
	phalcon/factory/abstractfactory.zep.c
	phalcon/storage/serializer/serializerinterface.zep.c
	phalcon/storage/serializer/abstractserializer.zep.c
	phalcon/di/injectable.zep.c
	phalcon/forms/element/elementinterface.zep.c
	phalcon/forms/element/abstractelement.zep.c
	phalcon/support/helper/str/abstractstr.zep.c
	phalcon/storage/adapter/abstractadapter.zep.c
	phalcon/support/collection.zep.c
	phalcon/support/helper/arr/abstractarr.zep.c
	phalcon/storage/serializer/none.zep.c
	phalcon/dispatcher/dispatcherinterface.zep.c
	phalcon/encryption/crypt/padding/padinterface.zep.c
	phalcon/filter/validation/validator/file/abstractfile.zep.c
	phalcon/assets/assetinterface.zep.c
	phalcon/config/configinterface.zep.c
	phalcon/mvc/model/metadatainterface.zep.c
	phalcon/cache/adapter/adapterinterface.zep.c
	phalcon/config/config.zep.c
	phalcon/datamapper/query/abstractquery.zep.c
	phalcon/db/adapter/adapterinterface.zep.c
	phalcon/mvc/model/metadata.zep.c
	phalcon/annotations/adapter/adapterinterface.zep.c
	phalcon/datamapper/pdo/connection/pdointerface.zep.c
	phalcon/db/adapter/abstractadapter.zep.c
	phalcon/db/dialectinterface.zep.c
	phalcon/html/helper/abstractseries.zep.c
	phalcon/html/link/interfaces/linkinterface.zep.c
	phalcon/html/link/interfaces/linkproviderinterface.zep.c
	phalcon/logger/adapter/adapterinterface.zep.c
	phalcon/mvc/model/resultsetinterface.zep.c
	phalcon/paginator/adapter/adapterinterface.zep.c
	phalcon/translate/adapter/adapterinterface.zep.c
	phalcon/annotations/adapter/abstractadapter.zep.c
	phalcon/assets/filterinterface.zep.c
	phalcon/datamapper/pdo/connection/connectioninterface.zep.c
	phalcon/datamapper/query/abstractconditions.zep.c
	phalcon/db/adapter/pdo/abstractpdo.zep.c
	phalcon/db/dialect.zep.c
	phalcon/di/diinterface.zep.c
	phalcon/encryption/security/jwt/signer/signerinterface.zep.c
	phalcon/events/abstracteventsaware.zep.c
	phalcon/filter/validation/validatorcompositeinterface.zep.c
	phalcon/flash/flashinterface.zep.c
	phalcon/html/helper/abstractlist.zep.c
	phalcon/image/adapter/adapterinterface.zep.c
	phalcon/logger/adapter/abstractadapter.zep.c
	phalcon/logger/formatter/formatterinterface.zep.c
	phalcon/mvc/model/behaviorinterface.zep.c
	phalcon/mvc/model/exception.zep.c
	phalcon/mvc/view/engine/engineinterface.zep.c
	phalcon/mvc/viewbaseinterface.zep.c
	phalcon/paginator/adapter/abstractadapter.zep.c
	phalcon/support/helper/str/pascalcase.zep.c
	phalcon/translate/adapter/abstractadapter.zep.c
	phalcon/acl/adapter/adapterinterface.zep.c
	phalcon/application/abstractapplication.zep.c
	phalcon/application/exception.zep.c
	phalcon/assets/asset.zep.c
	phalcon/assets/inline.zep.c
	phalcon/cache/cacheinterface.zep.c
	phalcon/datamapper/pdo/connection/abstractconnection.zep.c
	phalcon/datamapper/pdo/exception/exception.zep.c
	phalcon/di/di.zep.c
	phalcon/dispatcher/abstractdispatcher.zep.c
	phalcon/dispatcher/exception.zep.c
	phalcon/domain/payload/readableinterface.zep.c
	phalcon/domain/payload/writeableinterface.zep.c
	phalcon/encryption/security/jwt/token/abstractitem.zep.c
	phalcon/filter/validation/abstractvalidatorcomposite.zep.c
	phalcon/flash/abstractflash.zep.c
	phalcon/html/link/abstractlink.zep.c
	phalcon/html/link/abstractlinkprovider.zep.c
	phalcon/image/adapter/abstractadapter.zep.c
	phalcon/logger/formatter/abstractformatter.zep.c
	phalcon/logger/loggerinterface.zep.c
	phalcon/mvc/entityinterface.zep.c
	phalcon/mvc/model/behavior.zep.c
	phalcon/mvc/model/metadata/strategy/strategyinterface.zep.c
	phalcon/mvc/model/resultinterface.zep.c
	phalcon/mvc/model/resultset.zep.c
	phalcon/mvc/routerinterface.zep.c
	phalcon/mvc/view/engine/abstractengine.zep.c
	phalcon/session/adapter/abstractadapter.zep.c
	phalcon/translate/interpolator/interpolatorinterface.zep.c
	phalcon/acl/adapter/abstractadapter.zep.c
	phalcon/acl/componentinterface.zep.c
	phalcon/acl/roleinterface.zep.c
	phalcon/annotations/readerinterface.zep.c
	phalcon/cache/abstractcache.zep.c
	phalcon/cli/dispatcherinterface.zep.c
	phalcon/cli/router/routeinterface.zep.c
	phalcon/cli/taskinterface.zep.c
	phalcon/datamapper/pdo/connectionlocatorinterface.zep.c
	phalcon/datamapper/pdo/profiler/profilerinterface.zep.c
	phalcon/db/columninterface.zep.c
	phalcon/db/indexinterface.zep.c
	phalcon/db/referenceinterface.zep.c
	phalcon/db/resultinterface.zep.c
	phalcon/di/exception.zep.c
	phalcon/di/factorydefault.zep.c
	phalcon/di/serviceinterface.zep.c
	phalcon/domain/payload/payloadinterface.zep.c
	phalcon/encryption/crypt/cryptinterface.zep.c
	phalcon/encryption/crypt/exception/exception.zep.c
	phalcon/encryption/security/jwt/signer/abstractsigner.zep.c
	phalcon/events/eventinterface.zep.c
	phalcon/events/managerinterface.zep.c
	phalcon/filter/filterinterface.zep.c
	phalcon/filter/validation/abstractcombinedfieldsvalidator.zep.c
	phalcon/filter/validation/validationinterface.zep.c
	phalcon/html/attributes/attributesinterface.zep.c
	phalcon/html/attributes/renderinterface.zep.c
	phalcon/html/escaper/escaperinterface.zep.c
	phalcon/html/helper/input/checkbox.zep.c
	phalcon/html/helper/ol.zep.c
	phalcon/html/helper/style.zep.c
	phalcon/html/link/interfaces/evolvablelinkinterface.zep.c
	phalcon/html/link/interfaces/evolvablelinkproviderinterface.zep.c
	phalcon/html/link/link.zep.c
	phalcon/html/link/linkprovider.zep.c
	phalcon/html/link/serializer/serializerinterface.zep.c
	phalcon/http/cookie/cookieinterface.zep.c
	phalcon/http/message/requestmethodinterface.zep.c
	phalcon/http/message/responsestatuscodeinterface.zep.c
	phalcon/http/request/fileinterface.zep.c
	phalcon/http/requestinterface.zep.c
	phalcon/http/response/cookiesinterface.zep.c
	phalcon/http/response/headersinterface.zep.c
	phalcon/http/responseinterface.zep.c
	phalcon/logger/abstractlogger.zep.c
	phalcon/messages/messageinterface.zep.c
	phalcon/mvc/controllerinterface.zep.c
	phalcon/mvc/dispatcherinterface.zep.c
	phalcon/mvc/micro/collectioninterface.zep.c
	phalcon/mvc/model/binderinterface.zep.c
	phalcon/mvc/model/criteriainterface.zep.c
	phalcon/mvc/model/managerinterface.zep.c
	phalcon/mvc/model/query/builderinterface.zep.c
	phalcon/mvc/model/query/statusinterface.zep.c
	phalcon/mvc/model/queryinterface.zep.c
	phalcon/mvc/model/relationinterface.zep.c
	phalcon/mvc/model/transaction/exception.zep.c
	phalcon/mvc/model/transaction/managerinterface.zep.c
	phalcon/mvc/model/transactioninterface.zep.c
	phalcon/mvc/modelinterface.zep.c
	phalcon/mvc/router.zep.c
	phalcon/mvc/router/groupinterface.zep.c
	phalcon/mvc/router/routeinterface.zep.c
	phalcon/mvc/url/urlinterface.zep.c
	phalcon/mvc/view/exception.zep.c
	phalcon/mvc/viewinterface.zep.c
	phalcon/paginator/repositoryinterface.zep.c
	phalcon/session/adapter/noop.zep.c
	phalcon/session/baginterface.zep.c
	phalcon/session/managerinterface.zep.c
	phalcon/storage/adapter/apcu.zep.c
	phalcon/storage/adapter/libmemcached.zep.c
	phalcon/storage/adapter/memory.zep.c
	phalcon/storage/adapter/redis.zep.c
	phalcon/storage/adapter/stream.zep.c
	phalcon/storage/serializer/igbinary.zep.c
	phalcon/acl/adapter/memory.zep.c
	phalcon/acl/component.zep.c
	phalcon/acl/componentawareinterface.zep.c
	phalcon/acl/enum.zep.c
	phalcon/acl/exception.zep.c
	phalcon/acl/role.zep.c
	phalcon/acl/roleawareinterface.zep.c
	phalcon/annotations/adapter/apcu.zep.c
	phalcon/annotations/adapter/memory.zep.c
	phalcon/annotations/adapter/stream.zep.c
	phalcon/annotations/annotation.zep.c
	phalcon/annotations/annotationsfactory.zep.c
	phalcon/annotations/collection.zep.c
	phalcon/annotations/exception.zep.c
	phalcon/annotations/reader.zep.c
	phalcon/annotations/reflection.zep.c
	phalcon/assets/asset/css.zep.c
	phalcon/assets/asset/js.zep.c
	phalcon/assets/collection.zep.c
	phalcon/assets/exception.zep.c
	phalcon/assets/filters/cssmin.zep.c
	phalcon/assets/filters/jsmin.zep.c
	phalcon/assets/filters/none.zep.c
	phalcon/assets/inline/css.zep.c
	phalcon/assets/inline/js.zep.c
	phalcon/assets/manager.zep.c
	phalcon/autoload/exception.zep.c
	phalcon/autoload/loader.zep.c
	phalcon/cache/adapter/apcu.zep.c
	phalcon/cache/adapter/libmemcached.zep.c
	phalcon/cache/adapter/memory.zep.c
	phalcon/cache/adapter/redis.zep.c
	phalcon/cache/adapter/stream.zep.c
	phalcon/cache/adapterfactory.zep.c
	phalcon/cache/cache.zep.c
	phalcon/cache/cachefactory.zep.c
	phalcon/cache/exception/exception.zep.c
	phalcon/cache/exception/invalidargumentexception.zep.c
	phalcon/cli/console.zep.c
	phalcon/cli/console/exception.zep.c
	phalcon/cli/dispatcher.zep.c
	phalcon/cli/dispatcher/exception.zep.c
	phalcon/cli/router.zep.c
	phalcon/cli/router/exception.zep.c
	phalcon/cli/router/route.zep.c
	phalcon/cli/routerinterface.zep.c
	phalcon/cli/task.zep.c
	phalcon/config/adapter/grouped.zep.c
	phalcon/config/adapter/ini.zep.c
	phalcon/config/adapter/json.zep.c
	phalcon/config/adapter/php.zep.c
	phalcon/config/adapter/yaml.zep.c
	phalcon/config/configfactory.zep.c
	phalcon/config/exception.zep.c
	phalcon/datamapper/pdo/connection.zep.c
	phalcon/datamapper/pdo/connection/decorated.zep.c
	phalcon/datamapper/pdo/connectionlocator.zep.c
	phalcon/datamapper/pdo/exception/cannotdisconnect.zep.c
	phalcon/datamapper/pdo/exception/connectionnotfound.zep.c
	phalcon/datamapper/pdo/profiler/memorylogger.zep.c
	phalcon/datamapper/pdo/profiler/profiler.zep.c
	phalcon/datamapper/query/bind.zep.c
	phalcon/datamapper/query/delete.zep.c
	phalcon/datamapper/query/insert.zep.c
	phalcon/datamapper/query/queryfactory.zep.c
	phalcon/datamapper/query/select.zep.c
	phalcon/datamapper/query/update.zep.c
	phalcon/db/abstractdb.zep.c
	phalcon/db/adapter/pdo/mysql.zep.c
	phalcon/db/adapter/pdo/postgresql.zep.c
	phalcon/db/adapter/pdo/sqlite.zep.c
	phalcon/db/adapter/pdofactory.zep.c
	phalcon/db/column.zep.c
	phalcon/db/dialect/mysql.zep.c
	phalcon/db/dialect/postgresql.zep.c
	phalcon/db/dialect/sqlite.zep.c
	phalcon/db/enum.zep.c
	phalcon/db/exception.zep.c
	phalcon/db/index.zep.c
	phalcon/db/profiler.zep.c
	phalcon/db/profiler/item.zep.c
	phalcon/db/rawvalue.zep.c
	phalcon/db/reference.zep.c
	phalcon/db/result/pdoresult.zep.c
	phalcon/di/exception/serviceresolutionexception.zep.c
	phalcon/di/factorydefault/cli.zep.c
	phalcon/di/initializationawareinterface.zep.c
	phalcon/di/service.zep.c
	phalcon/di/service/builder.zep.c
	phalcon/di/serviceproviderinterface.zep.c
	phalcon/domain/payload/payload.zep.c
	phalcon/domain/payload/payloadfactory.zep.c
	phalcon/domain/payload/status.zep.c
	phalcon/encryption/crypt.zep.c
	phalcon/encryption/crypt/exception/mismatch.zep.c
	phalcon/encryption/crypt/padfactory.zep.c
	phalcon/encryption/crypt/padding/ansi.zep.c
	phalcon/encryption/crypt/padding/iso10126.zep.c
	phalcon/encryption/crypt/padding/isoiek.zep.c
	phalcon/encryption/crypt/padding/noop.zep.c
	phalcon/encryption/crypt/padding/pkcs7.zep.c
	phalcon/encryption/crypt/padding/space.zep.c
	phalcon/encryption/crypt/padding/zero.zep.c
	phalcon/encryption/security.zep.c
	phalcon/encryption/security/exception.zep.c
	phalcon/encryption/security/jwt/builder.zep.c
	phalcon/encryption/security/jwt/exceptions/unsupportedalgorithmexception.zep.c
	phalcon/encryption/security/jwt/exceptions/validatorexception.zep.c
	phalcon/encryption/security/jwt/signer/hmac.zep.c
	phalcon/encryption/security/jwt/signer/none.zep.c
	phalcon/encryption/security/jwt/token/enum.zep.c
	phalcon/encryption/security/jwt/token/item.zep.c
	phalcon/encryption/security/jwt/token/parser.zep.c
	phalcon/encryption/security/jwt/token/signature.zep.c
	phalcon/encryption/security/jwt/token/token.zep.c
	phalcon/encryption/security/jwt/validator.zep.c
	phalcon/encryption/security/random.zep.c
	phalcon/events/event.zep.c
	phalcon/events/exception.zep.c
	phalcon/events/manager.zep.c
	phalcon/factory/exception.zep.c
	phalcon/filter/exception.zep.c
	phalcon/filter/filter.zep.c
	phalcon/filter/filterfactory.zep.c
	phalcon/filter/sanitize/absint.zep.c
	phalcon/filter/sanitize/alnum.zep.c
	phalcon/filter/sanitize/alpha.zep.c
	phalcon/filter/sanitize/boolval.zep.c
	phalcon/filter/sanitize/email.zep.c
	phalcon/filter/sanitize/floatval.zep.c
	phalcon/filter/sanitize/intval.zep.c
	phalcon/filter/sanitize/lower.zep.c
	phalcon/filter/sanitize/lowerfirst.zep.c
	phalcon/filter/sanitize/regex.zep.c
	phalcon/filter/sanitize/remove.zep.c
	phalcon/filter/sanitize/replace.zep.c
	phalcon/filter/sanitize/special.zep.c
	phalcon/filter/sanitize/specialfull.zep.c
	phalcon/filter/sanitize/stringval.zep.c
	phalcon/filter/sanitize/stringvallegacy.zep.c
	phalcon/filter/sanitize/striptags.zep.c
	phalcon/filter/sanitize/trim.zep.c
	phalcon/filter/sanitize/upper.zep.c
	phalcon/filter/sanitize/upperfirst.zep.c
	phalcon/filter/sanitize/upperwords.zep.c
	phalcon/filter/sanitize/url.zep.c
	phalcon/filter/validation.zep.c
	phalcon/filter/validation/exception.zep.c
	phalcon/filter/validation/validator/alnum.zep.c
	phalcon/filter/validation/validator/alpha.zep.c
	phalcon/filter/validation/validator/between.zep.c
	phalcon/filter/validation/validator/callback.zep.c
	phalcon/filter/validation/validator/confirmation.zep.c
	phalcon/filter/validation/validator/creditcard.zep.c
	phalcon/filter/validation/validator/date.zep.c
	phalcon/filter/validation/validator/digit.zep.c
	phalcon/filter/validation/validator/email.zep.c
	phalcon/filter/validation/validator/exception.zep.c
	phalcon/filter/validation/validator/exclusionin.zep.c
	phalcon/filter/validation/validator/file.zep.c
	phalcon/filter/validation/validator/file/mimetype.zep.c
	phalcon/filter/validation/validator/file/resolution/equal.zep.c
	phalcon/filter/validation/validator/file/resolution/max.zep.c
	phalcon/filter/validation/validator/file/resolution/min.zep.c
	phalcon/filter/validation/validator/file/size/equal.zep.c
	phalcon/filter/validation/validator/file/size/max.zep.c
	phalcon/filter/validation/validator/file/size/min.zep.c
	phalcon/filter/validation/validator/identical.zep.c
	phalcon/filter/validation/validator/inclusionin.zep.c
	phalcon/filter/validation/validator/ip.zep.c
	phalcon/filter/validation/validator/numericality.zep.c
	phalcon/filter/validation/validator/presenceof.zep.c
	phalcon/filter/validation/validator/regex.zep.c
	phalcon/filter/validation/validator/stringlength.zep.c
	phalcon/filter/validation/validator/stringlength/max.zep.c
	phalcon/filter/validation/validator/stringlength/min.zep.c
	phalcon/filter/validation/validator/uniqueness.zep.c
	phalcon/filter/validation/validator/url.zep.c
	phalcon/filter/validation/validatorfactory.zep.c
	phalcon/flash/direct.zep.c
	phalcon/flash/exception.zep.c
	phalcon/flash/session.zep.c
	phalcon/forms/element/check.zep.c
	phalcon/forms/element/date.zep.c
	phalcon/forms/element/email.zep.c
	phalcon/forms/element/file.zep.c
	phalcon/forms/element/hidden.zep.c
	phalcon/forms/element/numeric.zep.c
	phalcon/forms/element/password.zep.c
	phalcon/forms/element/radio.zep.c
	phalcon/forms/element/select.zep.c
	phalcon/forms/element/submit.zep.c
	phalcon/forms/element/text.zep.c
	phalcon/forms/element/textarea.zep.c
	phalcon/forms/exception.zep.c
	phalcon/forms/form.zep.c
	phalcon/forms/manager.zep.c
	phalcon/html/attributes.zep.c
	phalcon/html/breadcrumbs.zep.c
	phalcon/html/escaper.zep.c
	phalcon/html/escaper/exception.zep.c
	phalcon/html/escaperfactory.zep.c
	phalcon/html/exception.zep.c
	phalcon/html/helper/anchor.zep.c
	phalcon/html/helper/base.zep.c
	phalcon/html/helper/body.zep.c
	phalcon/html/helper/button.zep.c
	phalcon/html/helper/close.zep.c
	phalcon/html/helper/doctype.zep.c
	phalcon/html/helper/element.zep.c
	phalcon/html/helper/form.zep.c
	phalcon/html/helper/img.zep.c
	phalcon/html/helper/input/color.zep.c
	phalcon/html/helper/input/date.zep.c
	phalcon/html/helper/input/datetime.zep.c
	phalcon/html/helper/input/datetimelocal.zep.c
	phalcon/html/helper/input/email.zep.c
	phalcon/html/helper/input/file.zep.c
	phalcon/html/helper/input/hidden.zep.c
	phalcon/html/helper/input/image.zep.c
	phalcon/html/helper/input/input.zep.c
	phalcon/html/helper/input/month.zep.c
	phalcon/html/helper/input/numeric.zep.c
	phalcon/html/helper/input/password.zep.c
	phalcon/html/helper/input/radio.zep.c
	phalcon/html/helper/input/range.zep.c
	phalcon/html/helper/input/search.zep.c
	phalcon/html/helper/input/select.zep.c
	phalcon/html/helper/input/submit.zep.c
	phalcon/html/helper/input/tel.zep.c
	phalcon/html/helper/input/text.zep.c
	phalcon/html/helper/input/textarea.zep.c
	phalcon/html/helper/input/time.zep.c
	phalcon/html/helper/input/url.zep.c
	phalcon/html/helper/input/week.zep.c
	phalcon/html/helper/label.zep.c
	phalcon/html/helper/link.zep.c
	phalcon/html/helper/meta.zep.c
	phalcon/html/helper/script.zep.c
	phalcon/html/helper/title.zep.c
	phalcon/html/helper/ul.zep.c
	phalcon/html/link/evolvablelink.zep.c
	phalcon/html/link/evolvablelinkprovider.zep.c
	phalcon/html/link/serializer/header.zep.c
	phalcon/html/tagfactory.zep.c
	phalcon/http/cookie.zep.c
	phalcon/http/cookie/exception.zep.c
	phalcon/http/request.zep.c
	phalcon/http/request/exception.zep.c
	phalcon/http/request/file.zep.c
	phalcon/http/response.zep.c
	phalcon/http/response/cookies.zep.c
	phalcon/http/response/exception.zep.c
	phalcon/http/response/headers.zep.c
	phalcon/image/adapter/gd.zep.c
	phalcon/image/adapter/imagick.zep.c
	phalcon/image/enum.zep.c
	phalcon/image/exception.zep.c
	phalcon/image/imagefactory.zep.c
	phalcon/logger/adapter/noop.zep.c
	phalcon/logger/adapter/stream.zep.c
	phalcon/logger/adapter/syslog.zep.c
	phalcon/logger/adapterfactory.zep.c
	phalcon/logger/enum.zep.c
	phalcon/logger/exception.zep.c
	phalcon/logger/formatter/json.zep.c
	phalcon/logger/formatter/line.zep.c
	phalcon/logger/item.zep.c
	phalcon/logger/logger.zep.c
	phalcon/logger/loggerfactory.zep.c
	phalcon/messages/exception.zep.c
	phalcon/messages/message.zep.c
	phalcon/messages/messages.zep.c
	phalcon/mvc/application.zep.c
	phalcon/mvc/application/exception.zep.c
	phalcon/mvc/controller.zep.c
	phalcon/mvc/controller/bindmodelinterface.zep.c
	phalcon/mvc/dispatcher.zep.c
	phalcon/mvc/dispatcher/exception.zep.c
	phalcon/mvc/micro.zep.c
	phalcon/mvc/micro/collection.zep.c
	phalcon/mvc/micro/exception.zep.c
	phalcon/mvc/micro/lazyloader.zep.c
	phalcon/mvc/micro/middlewareinterface.zep.c
	phalcon/mvc/model.zep.c
	phalcon/mvc/model/behavior/softdelete.zep.c
	phalcon/mvc/model/behavior/timestampable.zep.c
	phalcon/mvc/model/binder.zep.c
	phalcon/mvc/model/binder/bindableinterface.zep.c
	phalcon/mvc/model/criteria.zep.c
	phalcon/mvc/model/manager.zep.c
	phalcon/mvc/model/metadata/apcu.zep.c
	phalcon/mvc/model/metadata/libmemcached.zep.c
	phalcon/mvc/model/metadata/memory.zep.c
	phalcon/mvc/model/metadata/redis.zep.c
	phalcon/mvc/model/metadata/strategy/annotations.zep.c
	phalcon/mvc/model/metadata/strategy/introspection.zep.c
	phalcon/mvc/model/metadata/stream.zep.c
	phalcon/mvc/model/query.zep.c
	phalcon/mvc/model/query/builder.zep.c
	phalcon/mvc/model/query/lang.zep.c
	phalcon/mvc/model/query/status.zep.c
	phalcon/mvc/model/relation.zep.c
	phalcon/mvc/model/resultset/complex.zep.c
	phalcon/mvc/model/resultset/simple.zep.c
	phalcon/mvc/model/row.zep.c
	phalcon/mvc/model/transaction.zep.c
	phalcon/mvc/model/transaction/failed.zep.c
	phalcon/mvc/model/transaction/manager.zep.c
	phalcon/mvc/model/validationfailed.zep.c
	phalcon/mvc/moduledefinitioninterface.zep.c
	phalcon/mvc/router/annotations.zep.c
	phalcon/mvc/router/exception.zep.c
	phalcon/mvc/router/group.zep.c
	phalcon/mvc/router/route.zep.c
	phalcon/mvc/url.zep.c
	phalcon/mvc/url/exception.zep.c
	phalcon/mvc/view.zep.c
	phalcon/mvc/view/engine/php.zep.c
	phalcon/mvc/view/engine/volt.zep.c
	phalcon/mvc/view/engine/volt/compiler.zep.c
	phalcon/mvc/view/engine/volt/exception.zep.c
	phalcon/mvc/view/simple.zep.c
	phalcon/paginator/adapter/model.zep.c
	phalcon/paginator/adapter/nativearray.zep.c
	phalcon/paginator/adapter/querybuilder.zep.c
	phalcon/paginator/exception.zep.c
	phalcon/paginator/paginatorfactory.zep.c
	phalcon/paginator/repository.zep.c
	phalcon/session/adapter/libmemcached.zep.c
	phalcon/session/adapter/redis.zep.c
	phalcon/session/adapter/stream.zep.c
	phalcon/session/bag.zep.c
	phalcon/session/exception.zep.c
	phalcon/session/manager.zep.c
	phalcon/storage/adapterfactory.zep.c
	phalcon/storage/exception.zep.c
	phalcon/storage/serializer/base64.zep.c
	phalcon/storage/serializer/json.zep.c
	phalcon/storage/serializer/memcachedigbinary.zep.c
	phalcon/storage/serializer/memcachedjson.zep.c
	phalcon/storage/serializer/memcachedphp.zep.c
	phalcon/storage/serializer/msgpack.zep.c
	phalcon/storage/serializer/php.zep.c
	phalcon/storage/serializer/redisigbinary.zep.c
	phalcon/storage/serializer/redisjson.zep.c
	phalcon/storage/serializer/redismsgpack.zep.c
	phalcon/storage/serializer/redisnone.zep.c
	phalcon/storage/serializer/redisphp.zep.c
	phalcon/storage/serializerfactory.zep.c
	phalcon/support/collection/exception.zep.c
	phalcon/support/collection/readonlycollection.zep.c
	phalcon/support/debug.zep.c
	phalcon/support/debug/dump.zep.c
	phalcon/support/debug/exception.zep.c
	phalcon/support/exception.zep.c
	phalcon/support/helper/arr/blacklist.zep.c
	phalcon/support/helper/arr/chunk.zep.c
	phalcon/support/helper/arr/filter.zep.c
	phalcon/support/helper/arr/first.zep.c
	phalcon/support/helper/arr/firstkey.zep.c
	phalcon/support/helper/arr/flatten.zep.c
	phalcon/support/helper/arr/get.zep.c
	phalcon/support/helper/arr/group.zep.c
	phalcon/support/helper/arr/has.zep.c
	phalcon/support/helper/arr/isunique.zep.c
	phalcon/support/helper/arr/last.zep.c
	phalcon/support/helper/arr/lastkey.zep.c
	phalcon/support/helper/arr/order.zep.c
	phalcon/support/helper/arr/pluck.zep.c
	phalcon/support/helper/arr/set.zep.c
	phalcon/support/helper/arr/sliceleft.zep.c
	phalcon/support/helper/arr/sliceright.zep.c
	phalcon/support/helper/arr/split.zep.c
	phalcon/support/helper/arr/toobject.zep.c
	phalcon/support/helper/arr/validateall.zep.c
	phalcon/support/helper/arr/validateany.zep.c
	phalcon/support/helper/arr/whitelist.zep.c
	phalcon/support/helper/exception.zep.c
	phalcon/support/helper/file/basename.zep.c
	phalcon/support/helper/json/decode.zep.c
	phalcon/support/helper/json/encode.zep.c
	phalcon/support/helper/number/isbetween.zep.c
	phalcon/support/helper/str/camelize.zep.c
	phalcon/support/helper/str/concat.zep.c
	phalcon/support/helper/str/countvowels.zep.c
	phalcon/support/helper/str/decapitalize.zep.c
	phalcon/support/helper/str/decrement.zep.c
	phalcon/support/helper/str/dirfromfile.zep.c
	phalcon/support/helper/str/dirseparator.zep.c
	phalcon/support/helper/str/dynamic.zep.c
	phalcon/support/helper/str/endswith.zep.c
	phalcon/support/helper/str/firstbetween.zep.c
	phalcon/support/helper/str/friendly.zep.c
	phalcon/support/helper/str/humanize.zep.c
	phalcon/support/helper/str/includes.zep.c
	phalcon/support/helper/str/increment.zep.c
	phalcon/support/helper/str/interpolate.zep.c
	phalcon/support/helper/str/isanagram.zep.c
	phalcon/support/helper/str/islower.zep.c
	phalcon/support/helper/str/ispalindrome.zep.c
	phalcon/support/helper/str/isupper.zep.c
	phalcon/support/helper/str/kebabcase.zep.c
	phalcon/support/helper/str/len.zep.c
	phalcon/support/helper/str/lower.zep.c
	phalcon/support/helper/str/prefix.zep.c
	phalcon/support/helper/str/random.zep.c
	phalcon/support/helper/str/reduceslashes.zep.c
	phalcon/support/helper/str/snakecase.zep.c
	phalcon/support/helper/str/startswith.zep.c
	phalcon/support/helper/str/suffix.zep.c
	phalcon/support/helper/str/ucwords.zep.c
	phalcon/support/helper/str/uncamelize.zep.c
	phalcon/support/helper/str/underscore.zep.c
	phalcon/support/helper/str/upper.zep.c
	phalcon/support/helperfactory.zep.c
	phalcon/support/registry.zep.c
	phalcon/support/version.zep.c
	phalcon/tag.zep.c
	phalcon/tag/exception.zep.c
	phalcon/tag/select.zep.c
	phalcon/translate/adapter/csv.zep.c
	phalcon/translate/adapter/gettext.zep.c
	phalcon/translate/adapter/nativearray.zep.c
	phalcon/translate/exception.zep.c
	phalcon/translate/interpolator/associativearray.zep.c
	phalcon/translate/interpolator/indexedarray.zep.c
	phalcon/translate/interpolatorfactory.zep.c
	phalcon/translate/translatefactory.zep.c
	phalcon/0__closure.zep.c
	phalcon/1__closure.zep.c
	phalcon/2__closure.zep.c
	phalcon/3__closure.zep.c
	phalcon/4__closure.zep.c
	phalcon/5__closure.zep.c
	phalcon/6__closure.zep.c
	phalcon/7__closure.zep.c
	phalcon/8__closure.zep.c
	phalcon/9__closure.zep.c
	phalcon/10__closure.zep.c
	phalcon/11__closure.zep.c
	phalcon/12__closure.zep.c
	phalcon/13__closure.zep.c
	phalcon/14__closure.zep.c phalcon/annotations/scanner.c
	phalcon/annotations/parser.c
	phalcon/mvc/model/orm.c
	phalcon/mvc/model/query/scanner.c
	phalcon/mvc/model/query/parser.c
	phalcon/mvc/view/engine/volt/parser.c
	phalcon/mvc/view/engine/volt/scanner.c
	phalcon/mvc/url/utils.c"
	PHP_NEW_EXTENSION(phalcon, $phalcon_sources, $ext_shared,, )
	PHP_ADD_BUILD_DIR([$ext_builddir/kernel/])
	for dir in "phalcon phalcon/acl phalcon/acl/adapter phalcon/annotations phalcon/annotations/adapter phalcon/application phalcon/assets phalcon/assets/asset phalcon/assets/filters phalcon/assets/inline phalcon/autoload phalcon/cache phalcon/cache/adapter phalcon/cache/exception phalcon/cli phalcon/cli/console phalcon/cli/dispatcher phalcon/cli/router phalcon/config phalcon/config/adapter phalcon/datamapper/pdo phalcon/datamapper/pdo/connection phalcon/datamapper/pdo/exception phalcon/datamapper/pdo/profiler phalcon/datamapper/query phalcon/db phalcon/db/adapter phalcon/db/adapter/pdo phalcon/db/dialect phalcon/db/profiler phalcon/db/result phalcon/di phalcon/di/exception phalcon/di/factorydefault phalcon/di/service phalcon/dispatcher phalcon/domain/payload phalcon/encryption phalcon/encryption/crypt phalcon/encryption/crypt/exception phalcon/encryption/crypt/padding phalcon/encryption/security phalcon/encryption/security/jwt phalcon/encryption/security/jwt/exceptions phalcon/encryption/security/jwt/signer phalcon/encryption/security/jwt/token phalcon/events phalcon/factory phalcon/filter phalcon/filter/sanitize phalcon/filter/validation phalcon/filter/validation/validator phalcon/filter/validation/validator/file phalcon/filter/validation/validator/file/resolution phalcon/filter/validation/validator/file/size phalcon/filter/validation/validator/stringlength phalcon/flash phalcon/forms phalcon/forms/element phalcon/html phalcon/html/attributes phalcon/html/escaper phalcon/html/helper phalcon/html/helper/input phalcon/html/link phalcon/html/link/interfaces phalcon/html/link/serializer phalcon/http phalcon/http/cookie phalcon/http/message phalcon/http/request phalcon/http/response phalcon/image phalcon/image/adapter phalcon/logger phalcon/logger/adapter phalcon/logger/formatter phalcon/messages phalcon/mvc phalcon/mvc/application phalcon/mvc/controller phalcon/mvc/dispatcher phalcon/mvc/micro phalcon/mvc/model phalcon/mvc/model/behavior phalcon/mvc/model/binder phalcon/mvc/model/metadata phalcon/mvc/model/metadata/strategy phalcon/mvc/model/query phalcon/mvc/model/resultset phalcon/mvc/model/transaction phalcon/mvc/router phalcon/mvc/url phalcon/mvc/view phalcon/mvc/view/engine phalcon/mvc/view/engine/volt phalcon/paginator phalcon/paginator/adapter phalcon/session phalcon/session/adapter phalcon/storage phalcon/storage/adapter phalcon/storage/serializer phalcon/support phalcon/support/collection phalcon/support/debug phalcon/support/helper phalcon/support/helper/arr phalcon/support/helper/file phalcon/support/helper/json phalcon/support/helper/number phalcon/support/helper/str phalcon/tag phalcon/translate phalcon/translate/adapter phalcon/translate/interpolator"; do
		PHP_ADD_BUILD_DIR([$ext_builddir/$dir])
	done
	PHP_SUBST(PHALCON_SHARED_LIBADD)

	old_CPPFLAGS=$CPPFLAGS
	CPPFLAGS="$CPPFLAGS $INCLUDES"

	AC_CHECK_DECL(
		[HAVE_BUNDLED_PCRE],
		[
			AC_CHECK_HEADERS(
				[ext/pcre/php_pcre.h],
				[
					PHP_ADD_EXTENSION_DEP([phalcon], [pcre])
					AC_DEFINE([ZEPHIR_USE_PHP_PCRE], [1], [Whether PHP pcre extension is present at compile time])
				],
				,
				[[#include "main/php.h"]]
			)
		],
		,
		[[#include "php_config.h"]]
	)

	AC_CHECK_DECL(
		[HAVE_JSON],
		[
			AC_CHECK_HEADERS(
				[ext/json/php_json.h],
				[
					PHP_ADD_EXTENSION_DEP([phalcon], [json])
					AC_DEFINE([ZEPHIR_USE_PHP_JSON], [1], [Whether PHP json extension is present at compile time])
				],
				,
				[[#include "main/php.h"]]
			)
		],
		,
		[[#include "php_config.h"]]
	)

	CPPFLAGS=$old_CPPFLAGS

	PHP_INSTALL_HEADERS([ext/phalcon], [php_PHALCON.h])

fi
