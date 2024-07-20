module templates;


class MyClass
{
    interface MyInterface
    {
        oms_status_enu_t oms_exportSSMTemplate(const char* cref, const char* filename);
        oms_status_enu_t oms_exportSSMTemplateAsJson(const char * filename);
        oms_status_enu_t oms_importSSMTemplate(const char* filename);
        oms_status_enu_t oms_importSSMTemplateFromJson(const char* filename);
        oms_status_enu_t oms_exportSSMParameter(const char* cref, string name, string value);
        oms_status_enu_t oms_importSSMParameter(const char* filename);
        oms_status_enu_t oms_exportSSMParameterAsJson(const char * filename);
        oms_status_enu_t oms_importSSMParameterFromJson(const char* filename);
        oms_status_enu_t oms_exportSSMParameterVersion(const char* filename);
        oms_status_enu_t oms_importSSMParameterVersion(const char* filename);
        oms_status_enu_t oms_exportSSMParameterVersionAsJson(const char* filename);
        oms_status_enu_t oms_importSSMParameterVersionFromJson(const char *filename);
        oms_status_enu_t oms_exportSSMParameterHistory(const char* filename);
        oms_status_enu_t oms_importSSMParameterHistory(const char* filename);
        oms_status_enu_t oms_exportSSMParameterHistoryAsJson(const char * filename);
        oms_status_enu_t oms_importSSMParameterHistoryFromJson(const char * filename);
    }
}