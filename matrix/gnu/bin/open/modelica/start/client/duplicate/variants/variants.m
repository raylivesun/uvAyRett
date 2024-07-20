#include <string.h>
#include <time.h>

#if 0
typedef enum {
    OMS_STATUS_OK = 0,
    OMS_STATUS_ERROR,
    OMS_STATUS_INVALID_REF,
    OMS_STATUS_OUT_OF_MEMORY,
    OMS_STATUS_VARIANT_NOT_FOUND,
    OMS_STATUS_VARIANT_TYPE_MISMATCH,
    OMS_STATUS_VARIANT_VALUE_TOO_LONG,
    OMS_STATUS_VARIANT_INDEX_OUT_OF_RANGE,
    OMS_STATUS_VARIANT_NAME_TOO_LONG,
    OMS_STATUS_VARIANT_VALUE_NOT_SET,
} oms_status_enu_t;

oms_status_enu_t oms_duplicateVariant(const char* crefA, const char* crefB);
oms_status_enu_t oms_getVariantType(const char* cref);
oms_status_enu_t oms_getVariantValue(const char* cref, char* value, size_t valueSize);
oms_status_enu_t oms_setVariantValue(const char* cref, const char* value);
oms_status_enu_t oms_deleteVariant(const char* cref);
oms_status_enu_t oms_compareVariants(const char* crefA, const char* crefB, int* result);
oms_status_enu_t oms_getVariantCount(const char* cref, size_t* count);
oms_status_enu_t oms_getVariantByIndex(const char* cref, size_t index, char* name, size_t nameSize, char* value, size_t valueSize);
oms_status_enu_t oms_getVariantByName(const char* cref, const char* name, char* value, size_t valueSize);
oms_status_enu_t oms_getVariantValueAsInt(const char* cref, int* value);
oms_status_enu_t oms_getVariantValueAsDouble(const char* cref, double* value);
oms_status_enu_t oms_getVariantValueAsBool(const char* cref, bool* value);
oms_status_enu_t oms_getVariantValueAsDateTime(const char* cref, struct tm* value);
oms_status_enu_t oms_getVariantValueAsBinary(const char* cref, uint8_t* value, size_t* size);
oms_status_enu_t oms_getVariantValueAsEnum(const char* cref, const char** value, size_t* size);
oms_status_enu_t oms_getVariantValueAsArray(const char* cref, const char*** values, size_t* size);
oms_status_enu_t oms_getVariantValueAsMap(const char* cref, const char*** keys, const char*** values, size_t* size);
oms_status_enu_t oms_getVariantValueAsObject(const char* cref, const char*** properties, size_t* size);
oms_status_enu_t oms_getVariantValueAsStruct(const char* cref, const char*** fields, size_t* size);

void main(int argc, char ** argv) {
    const char* crefA = "variantA";
    const char* crefB = "variantB";

    // Demonstrate duplicate variant
    oms_status_enu_t status = oms_duplicateVariant(crefA, crefB);
    if (status != OMS_STATUS_OK) {
        printf("Failed to duplicate variant: %d\n", status);
        return;
    }
    printf("Successfully duplicated variant\n");

    // Demonstrate get variant type
    status = oms_getVariantType(crefA);
    if (status != OMS_STATUS_OK) {
        printf("Failed to get variant type: %d\n", status);
        return;
    }
    printf("Variant type: %d\n", status);

    // Demonstrate get variant value
    char value[100];
    size_t valueSize = sizeof(value);
    status = oms_getVariantValue(
        crefA,
        value,
        valueSize
    );
    if (status != OMS_STATUS_OK) {
        printf("Failed to get variant value: %d\n", status);
        return;
    }
    printf("Variant value: %s\n", value);

    // Demonstrate set variant value
    status = oms_setVariantValue(
        crefA,
        "newValue"
    );
    if (status != OMS_STATUS_OK) {
        printf("Failed to set variant value: %d\n", status);
        return;
    }
    printf("Successfully set variant value\n");

    // Demonstrate delete variant
    status = oms_deleteVariant(crefA);
    if (status != OMS_STATUS_OK) {
        printf("Failed to delete variant: %d\n", status);
        return;
    }
    printf("Successfully deleted variant\n");

    // Demonstrate compare variants
    int result;
    status = oms_compareVariants(crefA, crefB, &result);
    if (status != OMS_STATUS_OK) {
        printf("Failed to compare variants: %d\n", status);
        return;
    }
    printf("Comparison result: %d\n", result);

    // Demonstrate get variant count
    size_t count;
    status = oms_getVariantCount(crefA, &count);
    if (status != OMS_STATUS_OK) {
        printf("Failed to get variant count: %d\n", status);
        return;
    }
    printf("Variant count: %zu\n", count);

    // Demonstrate get variant by index
    char name[100];
    size_t nameSize = sizeof(name);
    char variantValue[100];
    size_t variantValueSize = sizeof(variantValue);
    status = oms_getVariantByIndex(crefA, 0, name, nameSize, variantValue, variantValueSize);
    if (status != OMS_STATUS_OK) {
        printf("Failed to get variant by index: %d\n", status);
        return;
    }
    printf("Variant name: %s\n", name);
    printf("Variant");
    // Demonstrate get variant by name
    status = oms_getVariantByName(crefA, "newValue", variantValue, variantValueSize);
    if (status != OMS_STATUS_OK) {
        printf("Failed to get variant by name: %d\n", status);
        return;
    }
    printf(" variant value: %s\n", variantValue);

    // Demonstrate get variant value as various types
    int intValue;
    status = oms_getVariantValueAsInt(crefA, &intValue);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as int: %d\n", intValue);
    } else {
        printf("Failed to get variant value as int: %d\n", status);
    }

    double doubleValue;
    status = oms_getVariantValueAsDouble(crefA, &doubleValue);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as double: %.2f\n", doubleValue);
    } else {
        printf("Failed to get variant value as double: %d\n", status);
    }
    bool boolValue;
    status = oms_getVariantValueAsBool(crefA, &boolValue);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as bool: %s\n", boolValue? "true" : "false");
    } else {
        printf("Failed to get variant value as bool: %d\n", status);
    }
    struct tm dateTimeValue;
    status = oms_getVariantValueAsDateTime(crefA, &dateTimeValue);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as date/time: %d-%02d-%02d %02d:%02d:%02d\n", dateTimeValue.tm_year + 1900, dateTimeValue.tm_mon + 1, dateTimeValue.tm_mday, dateTimeValue.tm_hour, dateTimeValue.tm_min, dateTimeValue.tm_sec);
    } else {
        printf("Failed to get variant value as date/time: %d\n", status);
    }

    uint8_t binaryValue[100];
    size_t binarySize;
    status = oms_getVariantValueAsBinary(crefA, binaryValue, &binarySize);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as binary (size: %zu): ", binarySize);
        for (size_t i = 0; i < binarySize; i++) {
            printf("%02x", binaryValue[i]);
        }
        printf("\n");
    } else {
        printf("Failed to get variant value as binary: %d\n", status);
    }
    const char* enumValue;
    size_t enumSize;
    status = oms_getVariantValueAsEnum(crefA, &enumValue, &enumSize);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as enum (size: %zu): %s\n", enumSize, enumValue);
    } else {
        printf("Failed to get variant value as enum: %d\n", status);
    }
    const char** values;
    size_t size;
    status = oms_getVariantValueAsArray(crefA, &values, &size);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as array (size: %zu):\n", size);
        for (size_t i = 0; i < size; i++) {
            printf("%s\n", values[i]);
        }
        free(values);
    } else {
        printf("Failed to get variant value as array: %d\n", status);
    }
    const char** keys;
    const char** valuesMap;
    size_t sizeMap;
    status = oms_getVariantValueAsMap(crefA, &keys, &valuesMap, &sizeMap);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as map (size: %zu):\n", sizeMap);
        for (size_t i = 0; i < sizeMap; i++) {
            printf("%s: %s\n", keys[i], valuesMap[i]);
        }
        free(keys);
        free(valuesMap);
    } else {
        printf("Failed to get variant value as map: %d\n", status);
    }
    const char*** properties;
    size_t sizeObject;
    status = oms_getVariantValueAsObject(crefA, &properties, &sizeObject);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as object (size: %zu):\n", sizeObject);
        for (size_t i = 0; i < sizeObject; i++) {
            printf("%s:\n", properties[i][0]);
            for (size_t j = 1; j < sizeObject; j++) {
                printf("  %s: %s\n", properties[i][j - 1], properties[i][j]);
            }
            free(properties[i]);
        }
        free(properties);
    } else {
        printf("Failed to get variant value as object: %d\n", status);
    }
    // Demonstrate get variant value as struct
    const char* fieldName;
    const char* fieldType;
    size_t sizeStruct;
    status = oms_getVariantValueAsStruct(crefA, &fieldName, &fieldType, &sizeStruct);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as struct (field: %s, type: %s, size: %zu):\n", fieldName, fieldType, sizeStruct);
    } else {
        printf("Failed to get variant value as struct: %d\n", status);
    }

    // Demonstrate get variant value as union
    const char* unionTag;
    const char* unionType;
    size_t sizeUnion;
    status = oms_getVariantValueAsUnion(crefA, &unionTag, &unionType, &sizeUnion);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as union (tag: %s, type: %s, size: %zu):\n", unionTag, unionType, sizeUnion);
    } else {
        printf("Failed to get variant value as union: %d\n", status);
    }
    // Demonstrate get variant value as variant
    const char* variantName;
    const char* variantType;
    size_t sizeVariant;
    status = oms_getVariantValueAsVariant(crefA, &variantName, &variantType, &sizeVariant);
    if (status == OMS_STATUS_OK) {
        printf("Variant value as variant (name: %s, type: %s, size: %zu):\n", variantName, variantType, sizeVariant);
    } else {
        printf("Failed to get variant value as variant: %d\n", status);
    }
}
#endif

