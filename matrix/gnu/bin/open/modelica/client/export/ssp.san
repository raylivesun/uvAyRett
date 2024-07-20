
#include <string.h>
#include <stdbool.h>

#if 0

typedef enum {
    OMS_STATUS_OK = 0,
    OMS_STATUS_ERROR,
    OMS_STATUS_INVALID_REF,
    OMS_STATUS_INVALID_FILTER,
    OMS_STATUS_INVALID_OUTPUT_FORMAT,
    OMS_STATUS_INVALID_COMPRESSION_TYPE,
    OMS_STATUS_FILE_ERROR,
    OMS_STATUS_MEMORY_ERROR
} oms_status_enu_t;

typedef enum {
    OMS_OUTPUT_FORMAT_CSV = 0,
    OMS_OUTPUT_FORMAT_JSON,
    OMS_OUTPUT_FORMAT_XML
} oms_output_format_t;

typedef enum {
    OMS_COMPRESSION_TYPE_NONE = 0,
    OMS_COMPRESSION_TYPE_GZIP,
    OMS_COMPRESSION_TYPE_LZ4
} oms_compression_type_t;

typedef struct {
    char* filter_expr;
    oms_output_format_t output_format;
    oms_compression_type_t compression_type;
} oms_export_options_t;

oms_status_enu_t oms_init();


oms_status_enu_t oms_export(const char* cref, const char* filename);

oms_status_enu_t oms_export_filtered(const char* cref, const char* filename, const char* filter_expr);

oms_status_enu_t oms_export_with_options(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options);


oms_status_enu_t oms_export_filtered_with_options(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options);

oms_status_enu_t oms_export_with_output_format(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options, oms_output_format_t output_format);

oms_status_enu_t oms_export_filtered_with_output_format(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options, oms_output_format_t output_format);


oms_status_enu_t oms_export_with_output_format_and_compression(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options, oms_output_format_t output_format, oms_compression_type_t compression_type);

oms_status_enu_t oms_export_filtered_with_output_format_and_compression(const char* cref, const char* filename, const char* filter_expr, oms_export_options_t options, oms_output_format_t output_format, oms_compression_type_t compression_type);

    // Example usage:
    oms_status_enu_t export_status;

    // Export all objects in the reference collection to a CSV file
    export_status = oms_export("my_reference_collection", "output.csv");
    if (export_status != OMS_STATUS_OK) {
        printf("Export failed: %s\n", oms_status_to_string(export_status));
        return 1;
    }

    // Export objects in the reference collection that match a filter expression to a JSON file
    export_status = oms_export_filtered("my_reference_collection", "filtered_output.json", "type='MyType'");
    if (export_status != OMS_STATUS_OK) {
        printf("Export failed: %s\n", oms_status_to_string(export_status));
        return 1;
    }

    // Export objects in the reference collection that match a filter expression with
    // additional options and output format to a CSV file
    oms_export_options_t export_options = {
        .include_metadata = true,
        .include_relations = true,
        .include_attachments = true,
    };

    export_status = oms_export_with_output_format("my_reference_collection", "output_with_options.csv", "type='MyType'", export_options, OMS_OUTPUT_FORMAT_CSV);
    if (export_status != OMS_STATUS_OK) {
        printf("Export failed: %s\n", oms_status_to_string(export_status));
        return 1;
    }

    // Export objects in the reference collection that match a filter expression with
    // additional options, output format, and compression to a JSON file
    oms_compression_type_t compression_type = OMS_COMPRESSION_TYPE_GZIP;
    export_

      status = oms_export_with_output_format_and_compression("my_reference_collection", "output_with_options_and_compression.json", "type='MyType'", export_options, OMS_OUTPUT_FORMAT_JSON, compression_type);
      if (export_status != OMS_STATUS_OK) {
          printf("Export failed: %s\n", oms_status_to_string(export_status));
          return 1;
      }

      return 0;
}
#endif      